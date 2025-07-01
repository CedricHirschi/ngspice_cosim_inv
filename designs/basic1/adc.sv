`timescale 1ns/1ps

module adc #(
    parameter integer RESOLUTION     = 8
) (
    input  logic                    clk_i,
    input  logic                    start_i,
    input  logic                    rst_ni,

    input  logic                    comp_i,

    output logic                    rdy_o,
    output logic                    sample_o,

    output logic [RESOLUTION-1:0]   dac_o,
    output logic [RESOLUTION-1:0]   result_o
);
    initial begin
        $dumpfile("adc.vcd");
        $dumpvars(0, adc);
    end

    typedef enum logic [1:0] { 
        IDLE,
        SAMPLE,
        CONVERT,
        DONE
    } state_t;
    state_t state_q, state_d;
    logic [RESOLUTION-1:0] dac_q, dac_d;
    logic [RESOLUTION-1:0] mask_q, mask_d;
    logic [RESOLUTION-1:0] result_q, result_d;

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            state_q <= IDLE;
            mask_q <= 0;
            result_q <= 0;
            dac_q <= 0;
        end else begin
            state_q <= state_d;
            mask_q <= mask_d;
            result_q <= result_d;
            dac_q <= dac_d;
        end
    end

    always_comb begin
        state_d = state_q;
        mask_d = mask_q;
        result_d = result_q;
        dac_d = dac_q;

        case (state_q)
            IDLE: begin
                if (start_i) begin
                    state_d = SAMPLE;
                    dac_d = 0;
                    
                    $display("[%0t] Sampling started", $time);
                end
            end

            SAMPLE: begin
                state_d = CONVERT;
                mask_d = (1 << (RESOLUTION - 1));
                dac_d = mask_d;
                $display("[%0t] Conversion started", $time);
            end

            CONVERT: begin
                $display("[%0t] Comparator input: %b", $time, comp_i);
                if (comp_i) begin
                    dac_d = (dac_q & ~mask_q) | (mask_q >> 1);
                end else begin
                    dac_d = dac_q | (mask_q >> 1);
                end
                $display("[%0t] DAC updated: %b", $time, dac_d);

                mask_d = mask_q >> 1;

                if (mask_d == 0) begin
                    state_d = DONE;
                    $display("[%0t] Last conversion", $time);
                end
            end

            DONE: begin
                if (!start_i) begin // Wait for start signal to reset
                    state_d = IDLE;
                    $display("[%0t] Comparator input: %b", $time, comp_i);
                    if (!comp_i) begin
                        result_d = (dac_q & ~mask_q) | mask_q;
                    end else begin
                        result_d = dac_q | mask_q;
                    end
                    dac_d = 0;
                    $display("[%0t] Conversion result: %b", $time, dac_d);
                    $display("[%0t] Conversion done", $time);
                end
            end

            default: state_d = IDLE; // Fallback to IDLE state
        endcase
    end

    assign sample_o = (state_q == SAMPLE) || (state_q == IDLE);
    assign rdy_o = (state_q == DONE);
    assign dac_o = ~dac_q;
    assign result_o = ~result_q;

endmodule
