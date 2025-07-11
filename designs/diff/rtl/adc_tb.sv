`timescale 1ns/1ps

`include "/workspaces/ngspice_cosim_inv/designs/diff/rtl/common_cells/include/common_cells/registers.svh"

module adc_tb;

  // Parameters
  localparam integer RESOLUTION = 8;

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
    $dumpfile("adc_tb.vcd");
    $dumpvars(0, adc_tb);

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

    // Test Case 3: All comparator outputs low (minimum input)
    $display("=== Test Case 3: Minimum input ===");
    test_conversion({8{1'b0}}, 8'b00000000);

    // Test Case 4: Mid-scale input
    $display("=== Test Case 4: Mid-scale input ===");
    test_conversion({1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}, 8'b01111111);

    $display("=== All tests completed ===");
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
      $display("Sample phase started");

      // Wait for convert phase and provide comparator inputs
      wait(sample_o == 0);
      $display("Convert phase started");

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
        $display("Step %0d: comp=%b, dac_p=%b, dac_n=%b", i,  comp_pattern[RESOLUTION-1-i], dac_p_o, dac_n_o);
      end

      // Wait for conversion to complete
      wait(rdy_o == 1);
      end_time = $time;
      $display("Conversion complete: result=%b (expected=%b)", result_o, expected_result);
      $display("Total conversion time: %0d ns (%0d cycles)", end_time - start_time, (end_time - start_time) / 10);

      // Check result
      if (result_o == expected_result)
      begin
        $display("✓ PASS: Result matches expected value");
      end
      else
      begin
        $display("✗ FAIL: Result %b does not match expected %b", result_o, expected_result);
      end

      // Wait for ready to go low
      @(posedge clk_i);
      comp_p_i = 0;
      comp_n_i = 0;
      //   wait(rdy_o == 0);

      $display("Test completed\n");
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
