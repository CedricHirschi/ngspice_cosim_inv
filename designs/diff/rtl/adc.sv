`timescale 1ns/1ps

`include "/workspaces/ngspice_cosim_inv/designs/diff/rtl/common_cells/include/common_cells/registers.svh"

module adc #(
    parameter integer RESOLUTION     = 8 // ADC resolution in bits
  ) (
    input  logic                    clk_i,    // Clock input
    input  logic                    start_i,  // Start signal for ADC conversion
    input  logic                    rst_ni,   // Active low reset signal

    // Comparator input signals
    // - vip > vin: comp_p_i = 1, comp_n_i = 0
    // - vip < vin: comp_p_i = 0, comp_n_i = 1
    input  logic                    comp_p_i, // Positive side comparator input
    input  logic                    comp_n_i, // Negative side comparator input

    output logic                    sample_o, // Sample signal indicating ADC is sampling
    output logic [RESOLUTION-1:0]   dac_p_o,  // Positive Digital-to-Analog Converter output
    output logic [RESOLUTION-1:0]   dac_n_o,  // Negative Digital-to-Analog Converter output

    output logic                    rdy_o,    // Ready signal indicating conversion is done
    output logic [RESOLUTION-1:0]   result_o  // Result of the ADC conversion
  );

  initial
  begin
    $dumpfile("adc.vcd");
    $dumpvars(0, adc);
  end

  typedef enum logic [1:0] {
            IDLE,
            SAMPLE,
            CONVERT
          } state_t;
  state_t state_q, state_d;

  typedef logic [RESOLUTION-1:0] data_t;
  data_t dac_p_q, dac_p_d;
  data_t dac_n_q, dac_n_d;
  data_t mask_q, mask_d;
  data_t result_q, result_d;
  data_t result_o_q, result_o_d;

  // Comparator logic (redundant)
  logic comp;
  assign comp = comp_p_i & ~comp_n_i; // high when vip > vin

  logic rdy_q, rdy_d;

  // Flip-flops for state and data registers
  `FF(state_q, state_d, IDLE);
  `FF(dac_p_q, dac_p_d, {RESOLUTION{1'b0}});
  `FF(dac_n_q, dac_n_d, {RESOLUTION{1'b0}});
  `FF(mask_q, mask_d, {RESOLUTION{1'b0}});
  `FF(result_q, result_d, {RESOLUTION{1'b0}});
  `FF(result_o_q, result_o_d, {RESOLUTION{1'b0}});
  `FF(rdy_q, rdy_d, 1'b0);

  always_comb
  begin: combinational_sar_logic
    state_d = state_q;
    dac_p_d = dac_p_q;
    dac_n_d = dac_n_q;
    mask_d = mask_q;
    result_d = result_q;
    result_o_d = result_o_q;
    rdy_d = rdy_q;

    case (state_q)
      IDLE:
      begin
        dac_p_d = 0;
        dac_n_d = 0;
        mask_d  = '0;
        result_d = 0;

        if (start_i)
        begin
          state_d = SAMPLE;
        end
      end

      SAMPLE:
      begin
        state_d = CONVERT;
        mask_d = (1 << (RESOLUTION - 1));
        dac_p_d = 0;
        dac_n_d = 0;
        rdy_d = 0;
      end

      CONVERT:
      begin
        if (comp) // vip > vin
        begin
          dac_p_d = dac_p_q ^ mask_q;
        end
        else
        begin
          dac_n_d = dac_n_q ^ mask_q;
        end

        result_d |= (comp ? mask_q : 0);

        mask_d >>= 1;
        if (mask_q == 1)
        begin
          result_o_d = result_d;
          rdy_d = 1; // Set ready signal when conversion is complete

          if (start_i)
          begin
            state_d = SAMPLE;
            dac_p_d = 0;
            dac_n_d = 0;
            mask_d  = '0;
            result_d = 0;
          end
          else
            state_d = IDLE;
        end
      end

      default:
      begin
        state_d = IDLE; // Fallback to IDLE state
        dac_p_d = 0;
        dac_n_d = 0;
        mask_d  = '0;
      end
    endcase
  end

  assign sample_o = (state_q == SAMPLE);
  assign rdy_o = rdy_q;
  assign dac_p_o = dac_p_q;
  assign dac_n_o = dac_n_q;
  assign result_o = result_o_q;

endmodule
