module rom(
    input wire [5:0] addr,
    input wire ce,
    output reg [31:0] inst
);
    reg [31:0] rom[63:0];
    initial $readmemh("D:\\CPU_Design\\chapter2\\sim\\rom.data", rom);
    
    always @(*) begin
        if (ce == 1'b0) begin
            inst <= 32'b0;
        end else begin
            inst <= rom[addr];
        end
    end
endmodule