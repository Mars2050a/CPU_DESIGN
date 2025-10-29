// 全局宏定义
`define RstEnable 1'b1 // 复位信号有效
`define RstDisable 1'b0 // 复位信号无效
`define ZeroWord 32'h00000000 // 32位的数值0
`define WriteEnable 1'b1 // 写使能
`define WriteDisable 1'b0 // 写禁止
`define ReadEnable 1'b1 // 读使能
`define ReadDisable 1'b0 // 读禁止
`define AluOpBus 7:0 // 译码阶段的输出aluop_o的宽度
`define AluSelBus 2:0 // 译码阶段的输出alusel_o的宽度
`define InstValid 1'b0 // 指令有效
`define InstInvalid 1'b1 // 指令无效
`define True_v 1'b1 // 逻辑真
`define False_v 1'b0 // 逻辑假
`define ChipEnable 1'b1 // 芯片使能
`define ChipDisable 1'b0 // 芯片禁止

// 与指令相关的宏定义
`define EXE_ORI 6'b001101 // ori指令的opcode
`define EXE_NOP 6'b000000 // nop指令的opcode

// AluOp
`define EXE_OR_OP 8'b00100101
`define EXE_NOP_OP 8'b00000000

// ALU选择信号
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_NOP 3'b000

// 与指令存储器ROM相关的宏定义
`define InstAddrBus 31:0 // ROM的地址宽度
`define InstBus 31:0 // ROM的数据宽度
`define InstMemNum 131071 // ROM的实际大小为128KB
`define InstMemNumLog2 17 // ROM实际使用的地址线宽度

// 与通用寄存器堆Regfile相关的宏定义
`define RegAddrBus 4:0 // Regfile模块的地址线宽度
`define RegBus 31:0 // Regfile模块的数据线宽度
`define RegWidth 32 // 通用寄存器的宽度
`define DoubleRegWidth 64 // 两倍的通用寄存器的宽度
`define DoubleRegBus 63:0 // 两倍的通用寄存器的数据线宽度
`define RegNum 32 // 通用寄存器的数量
`define RegNumLog2 5 // 5线寻址32个寄存器
`define NOPRegAddr 5'b00000 // nop指令的目的寄存器地址