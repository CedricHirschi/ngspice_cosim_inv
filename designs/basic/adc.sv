`timescale 1ns/1ps

module adc #(
    parameter integer RESOLUTION     = 4
) (
    input  logic                    clk_i,
    input  logic                    start_i,   // assert or pulse high to launch conversion
    input  logic                    rst_ni,
    input  logic                    comp_i,    // 1 → VIN > VDAC
    output logic                    rdy_o,     // one cycle at end of conversion
    output logic                    sample_o,  // high while sampling
    output logic [RESOLUTION-1:0]   dac_o      // current DAC word
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
    state_t state;
    logic [RESOLUTION-1:0] sr;

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            state <= IDLE;
            sr <= 0;
            dac_o <= 0;
        end else begin
            case (state)
                SAMPLE: begin
                    sr[RESOLUTION-1] <= 1;
                    dac_o <= sr;

                    state <= CONVERT;
                end

                CONVERT: begin
                    if (sr != 0) begin
                        if (comp_i) begin
                            // Below threshold, revert previous bit
                            dac_o <= (dac_o & ~(sr << 1)) | sr;
                        end else begin
                            // Above threshold, keep current bit
                            dac_o <= dac_o | sr;
                        end

                        // Shift right to process next bit
                        sr <= sr >> 1;

                        if (sr == 1) begin
                            state <= DONE;
                        end
                    end
                end

                DONE: begin
                    state <= IDLE;
                    sr <= 0;
                    dac_o <= 0;
                end

                IDLE: begin
                    if (start_i) begin
                        state <= SAMPLE;
                    end
                end

                default: begin
                    state <= IDLE;
                    sr <= 0;
                    dac_o <= 0;
                end
            endcase
        end
    end

    assign sample_o = (state == SAMPLE) || (state == IDLE);
    assign rdy_o = (state == DONE);

endmodule
