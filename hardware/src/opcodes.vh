`ifndef _opcodes_h
`define _opcodes_h

localparam OP_ADD = 4d'0;
localparam OP_AND = 4d'1;
localparam OP_OR  = 4d'2;
localparam OP_XOR = 4d'3;
localparam OP_NOT = 4d'4;
localparam OP_NEG = 4d'5;
localparam OP_SRL = 4d'6;
localparam OP_SRA = 4d'7;
localparam OP_SLL = 4d'8;
localparam OP_IMM = 4d'9;
localparam OP_RD  = 4d'10;
localparam OP_WR  = 4d'11;
localparam OP_BRZ = 4d'12;
localparam OP_JMP = 4d'13;
localparam OP_CAL = 4d'14;
localparam OP_RET = 4d'15;

`endif
