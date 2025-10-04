module inst_fetch_tb;
    reg clock;
    reg rst;
    wire [31:0] inst;

    // 模拟时钟信号
    initial begin
        clock = 1'b0;
        forever begin
            #10 clock = ~clock;
        end
    end
    // 模拟复位信号
    initial begin
        rst = 1'b1;
        #100 rst = 1'b0;
    end
    // 实例化指令获取模块
    inst_fetch inst_fetch0(
        .clk(clock),
        .rst(rst),
        .inst_out(inst)
    );
endmodule