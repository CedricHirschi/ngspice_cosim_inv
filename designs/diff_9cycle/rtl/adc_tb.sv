`timescale 1ns/1ps

`include "/workspaces/ngspice_cosim_inv/designs/diff/rtl/common_cells/include/common_cells/registers.svh"

module adc_tb;

  // Parameters
  localparam integer RESOLUTION = 8;

  integer tests_done = 0;
  integer tests_passed = 0;

  //Ports
  reg clk_i;
  reg start_i;
  reg rst_ni;
  reg comp_p_i;
  reg comp_n_i;
  wire sample_o;
  wire [RESOLUTION-1:0] dac_p_o;
  wire [RESOLUTION-1:0] dac_n_o;
  wire rdy_o;
  wire [RESOLUTION-1:0] result_o;

  adc # (
        .RESOLUTION(RESOLUTION)
      )
      adc_inst (
        .clk_i(clk_i),
        .start_i(start_i),
        .rst_ni(rst_ni),
        .comp_p_i(comp_p_i),
        .comp_n_i(comp_n_i),
        .sample_o(sample_o),
        .dac_p_o(dac_p_o),
        .dac_n_o(dac_n_o),
        .rdy_o(rdy_o),
        .result_o(result_o)
      );

  //always #5  clk = ! clk ;

  // Clock generation
  initial
  begin
    clk_i = 0;
    forever
      #5 clk_i = ~clk_i; // 100MHz clock (10ns period)
  end

  // Test stimulus
  initial
  begin
    // Initialize VCD dump
    $dumpfile("adc_tb.fst");
    $dumpvars(1, adc_tb);

    // Initialize signals
    start_i = 0;
    rst_ni = 0;
    comp_p_i = 0;
    comp_n_i = 0;

    // Reset sequence
    #20;
    rst_ni = 1;
    #10;

    // Test Case 1: Basic conversion with vip > vin pattern
    $display("=== Test Case 1: Basic SAR conversion ===");
    test_conversion({1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1}, 8'b10101101);

    // Test Case 2: All comparator outputs high (maximum input)
    $display("=== Test Case 2: Maximum input ===");
    test_conversion({8{1'b1}}, 8'b11111111);

    // Also wait for some time in between to see how ready signal behaves
    for (integer i = 0; i < 10; i++)
    begin
      @(posedge clk_i);
    end

    // Test Case 3: All comparator outputs low (minimum input)
    $display("=== Test Case 3: Minimum input ===");
    test_conversion({8{1'b0}}, 8'b00000000);

    // Test Case 4: Mid-scale input
    $display("=== Test Case 4: Mid-scale input ===");
    test_conversion({1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}, 8'b01111111);

    // Test Case 5: Immediate restart with start_i high during DONE
    $display("=== Test Case 5: Immediate restart test ===");
    test_immediate_restart({1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1}, 8'b10101101,
                           {1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}, 8'b01111111);

    $display("=== All tests completed ===");
    $display("Total tests run: %0d, Passed: %0d, Failed: %0d\n", tests_done, tests_passed, tests_done - tests_passed);
    #100;
    $finish;
  end

  // Task to perform a single ADC conversion test
  task test_conversion(input [RESOLUTION-1:0] comp_pattern, input [RESOLUTION-1:0] expected_result);
    integer i;
    integer start_time, end_time;
    begin
      $display("Starting conversion with comparator pattern: %b, expected result: %b", comp_pattern, expected_result);

      // Start conversion
      @(posedge clk_i);
      start_i = 1;

      // Record start time
      start_time = $time;

      @(posedge clk_i);
      start_i = 0;

      // Wait for sample phase
      wait(sample_o == 1);
      //   $display("Sample phase started");

      // Wait for convert phase and provide comparator inputs
      wait(sample_o == 0);
      //   $display("Convert phase started");

      for (i = 0; i < RESOLUTION; i++)
      begin
        @(posedge clk_i);
        // Provide comparator input based on pattern
        if (comp_pattern[RESOLUTION-1-i])
        begin
          comp_p_i = 1;
          comp_n_i = 0;
        end
        else
        begin
          comp_p_i = 0;
          comp_n_i = 1;
        end
        // $display("Step %0d: comp=%b, dac_p=%b, dac_n=%b", i,  comp_pattern[RESOLUTION-1-i], dac_p_o, dac_n_o);
      end

      // Wait for conversion to complete
      wait(rdy_o == 1);
      end_time = $time;
      $display("Conversion complete: result=%b (expected=%b)", result_o, expected_result);
      $display("Total conversion time: %0d ns (%0d cycles)", end_time - start_time, (end_time - start_time) / 10);

      // Check result
      tests_done = tests_done + 1;
      if (result_o == expected_result)
      begin
        tests_passed = tests_passed + 1;
        $display("✓ PASS: Result matches expected value");
      end
      else
      begin
        $display("✗ FAIL: Result %b does not match expected %b", result_o, expected_result);
      end

      $display("Test completed\n");
    end
  endtask

  // Task to test immediate restart functionality
  task test_immediate_restart(input [RESOLUTION-1:0] comp_pattern1, input [RESOLUTION-1:0] expected_result1,
                                input [RESOLUTION-1:0] comp_pattern2, input [RESOLUTION-1:0] expected_result2);
    integer i;
    integer start_time1, end_time1, start_time2, end_time2;
    begin
      $display("Testing immediate restart: First conversion pattern=%b, expected=%b", comp_pattern1, expected_result1);
      $display("                         Second conversion pattern=%b, expected=%b", comp_pattern2, expected_result2);

      // === FIRST CONVERSION ===
      @(posedge clk_i);
      start_i = 1;
      start_time1 = $time;

      //   @(posedge clk_i);
      //   start_i = 0;  // Normal start sequence

      // Wait for sample phase
      wait(sample_o == 1);
      wait(sample_o == 0);

      // Provide comparator inputs for first conversion
      for (i = 0; i < RESOLUTION; i++)
      begin
        @(posedge clk_i);
        if (comp_pattern1[RESOLUTION-1-i])
        begin
          comp_p_i = 1;
          comp_n_i = 0;
        end
        else
        begin
          comp_p_i = 0;
          comp_n_i = 1;
        end
      end

      // === CRITICAL PART: Set start_i HIGH before DONE state completes ===
      // Wait for ready but set start_i high to trigger immediate restart
      wait(rdy_o == 1);
      end_time1 = $time;
      $display("First conversion complete: result=%b (expected=%b)", result_o, expected_result1);
      $display("First conversion time: %0d ns (%0d cycles)", end_time1 - start_time1, (end_time1 - start_time1) / 10);

      // Check first result
      tests_done = tests_done + 1;
      if (result_o == expected_result1)
      begin
        tests_passed = tests_passed + 1;
        $display("✓ PASS: First conversion result matches");
      end
      else
      begin
        $display("✗ FAIL: First conversion result %b does not match expected %b", result_o, expected_result1);
      end

      start_time2 = $time;
      $display("Setting start_i=1 for immediate restart at time %0d", start_time2);

      // === SECOND CONVERSION (should start immediately) ===
      // Should go directly from DONE to SAMPLE without going through IDLE
      @(posedge clk_i);
      start_i = 0;  // Clear start signal

      // Wait for sample phase of second conversion
      wait(sample_o == 1);
      $display("Second conversion sample phase detected - immediate restart successful!");
      wait(sample_o == 0);

      // Provide comparator inputs for second conversion
      for (i = 0; i < RESOLUTION; i++)
      begin
        @(posedge clk_i);
        if (comp_pattern2[RESOLUTION-1-i])
        begin
          comp_p_i = 1;
          comp_n_i = 0;
        end
        else
        begin
          comp_p_i = 0;
          comp_n_i = 1;
        end
      end

      // Wait for second conversion to complete
      wait(rdy_o == 1);
      end_time2 = $time;
      $display("Second conversion complete: result=%b (expected=%b)", result_o, expected_result2);
      $display("Second conversion time: %0d ns (%0d cycles)", end_time2 - start_time2, (end_time2 - start_time2) / 10);
      $display("Total time for both conversions: %0d ns", end_time2 - start_time1);

      // Check second result
      tests_done = tests_done + 1;
      if (result_o == expected_result2)
      begin
        tests_passed = tests_passed + 1;
        $display("✓ PASS: Second conversion result matches");
      end
      else
      begin
        $display("✗ FAIL: Second conversion result %b does not match expected %b", result_o, expected_result2);
      end
    end
  endtask

  // Monitor important signals
  always @(posedge clk_i)
  begin
    if (rst_ni)
    begin
      //   $display("Time=%0t clk=%b start=%b sample=%b rdy=%b state=%s comp=%b result=%b",
      //            $time, clk_i, start_i, sample_o, rdy_o,
      //            get_state_name(), (comp_p_i & ~comp_n_i), result_o);
    end
  end

  // Function to get state name for debugging
  function string get_state_name();
    case (adc_inst.state_q)
      2'b00:
        get_state_name = "IDLE";
      2'b01:
        get_state_name = "SAMPLE";
      2'b10:
        get_state_name = "CONVERT";
      2'b11:
        get_state_name = "DONE";
      default:
        get_state_name = "UNKNOWN";
    endcase
  endfunction

endmodule
