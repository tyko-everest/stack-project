`ifndef _opcodes_h
`define _opcodes_h

// 2 arg ops
localparam OP_ADD = 3d'0;
localparam OP_SUB = 3d'1;
localparam OP_AND = 3d'2;
localparam OP_OR  = 3d'3;
localparam OP_XOR = 3d'4;
localparam OP_SAR = 3d'5;
localparam OP_SLR = 3d'6;
localparam OP_SLL = 3d'7;

// 1 arg ops
localparam OP_DUP = 3d'0;
localparam OP_NOT = 3d'1;
localparam OP_NEG = 3d'2;

// 1 num ops
localparam OP_CAL = 3d'4;
localparam OP_RET = 3d'5;

// 0 num ops
localparam OP_RD  = 3d'0;
localparam OP_WR  = 3d'1;
localparam OP_IMM = 3d'2;
localparam OP_JMP = 3d'3;
localparam OP_BRZ = 3d'4;
localparam OP_BEQ = 3d'5;
localparam OP_BLT = 3d'6;
localparam OP_BGE = 3d'7;

`endif
