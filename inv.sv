`timescale 1ns/1ps

module inv (
    input logic clk_i,
    input logic in_i,
    output logic out_o
);

    initial begin
        $display("Inv simulation starting");

        // Dump all to inv.vcd
        $dumpfile("inv.vcd");
        $dumpvars(0, inv);
    end

    always_ff @(posedge clk_i) begin
        out_o <= ~in_i;
    end

endmodule