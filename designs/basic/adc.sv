`timescale 1ns / 1ps

module adc #(
    parameter RESOLUTION = 4
) (
    input  logic clk_i,
    input  logic start_i,
    input  logic rst_ni,
    input  logic comp_i,
    output logic rdy_o,
    output logic sample_o,
    output logic [RESOLUTION - 1:0] dac_o
);

    // State definitions
    typedef enum logic [1:0] {
        IDLE,
        SAMPLE,
        CONVERT,
        DONE
    } state_e;

    // Internal signals
    state_e state_q, state_d;
    logic [RESOLUTION - 1:0] mask_q, mask_d;
    logic [RESOLUTION - 1:0] result_q, result_d;
    logic [7:0] sample_count_q, sample_count_d;

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            state_q  <= IDLE;
            mask_q   <= '0;
            result_q <= '0;
            sample_count_q <= '0;
        end else begin
            state_q  <= state_d;
            mask_q   <= mask_d;
            result_q <= result_d;
            sample_count_q <= sample_count_d;
        end
    end

    initial begin
        $display("SAR ADC initialized with resolution: %d bits", RESOLUTION);
        // Dump to VCD file for simulation
        $dumpfile("adc.vcd");
        $dumpvars(0, adc);
    end

    // SAR Conversion Logic
    always_comb begin
        // Default assignments to avoid latches
        state_d  = state_q;
        mask_d   = mask_q;
        result_d = result_q;
        sample_count_d = sample_count_q;

        case (state_q)
            IDLE: begin
                if (start_i) begin
                    state_d  = SAMPLE;
                    mask_d   = '0;
                    result_d = '0;
                    sample_count_d = 0;
                end
            end

            SAMPLE: begin
                if (sample_count_q < 5) begin
                    sample_count_d = sample_count_q + 1;
                end else begin
                    state_d = CONVERT;
                    sample_count_d = 0; // Reset sample count after sampling
                    mask_d  = '1 << (RESOLUTION - 1); // Start with MSB set
                end
            end

            CONVERT: begin
                mask_d = mask_q >> 1;
                if (!comp_i) begin
                    result_d = result_q | mask_q;
                end

                if (mask_d == '0) begin
                    state_d = DONE;
                end
            end

            DONE: begin
                state_d = IDLE;
            end
        endcase
    end

    assign dac_o = result_q | mask_q;
    assign rdy_o = (state_q == DONE);
    assign sample_o = (state_q == SAMPLE);

endmodule