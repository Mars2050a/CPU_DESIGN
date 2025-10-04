module inst_fetch(
    input wire clk,
    input wire rst,
    output wire [31:0] inst_out
);
    wire [5:0] pc;
    wire ce;

    pc_reg pc_reg0(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .pc(pc)
    );
    rom rom0(
        .addr(pc),
        .ce(ce),
        .inst(inst_out)
    );
endmodule