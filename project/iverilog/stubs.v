module sg13g2_dfrbpq_1(
    input wire RESET_B,
    input wire D,
    output wire Q,
    input wire CLK
);

sg13g2_dfrbp_1 dfrbp_inst (
    .RESET_B(RESET_B),
    .D(D),
    .Q(Q),
    .CLK(CLK),
    .Q_N()
);

endmodule

module sg13g2_dfrbpq_2(
    input wire RESET_B,
    input wire D,
    output wire Q,
    input wire CLK
);

sg13g2_dfrbp_2 dfrbp_inst (
    .RESET_B(RESET_B),
    .D(D),
    .Q(Q),
    .CLK(CLK),
    .Q_N()
);

endmodule