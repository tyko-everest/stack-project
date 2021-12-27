`include "src/consts.vh"
`include "src/opcodes.vh"

module cpu (
    input wire clk,
    input wire reset,
    input wire [STACK_WIDTH-1:0] data_stack_out,
    output wire [STACK_WIDTH-1:0] data_stack_in,
    output reg [DATA_STACK_SIZE-1:0] data_stack_addr,
    output wire data_stack_wen,
    input wire [STACK_WIDTH-1:0] ret_stack_out,
    output wire [STACK_WIDTH-1:0] ret_stack_in,
    output reg [RET_STACK_SIZE-1:0] ret_stack_addr,
    output wire ret_stack_wen,
    input wire [PROG_MEM_WIDTH-1:0] prog_mem_out,
    output reg [PROG_MEM_SIZE-1:0] prog_mem_addr
);

wire [7:0] i_op;
// 0 -> 2 rstack args
// 1 -> 1 rstack and 1 vstack arg
// 2 -> 2 vstack args
// 3 -> 1 rstack arg
// 4 -> 1 vstack arg
// 5 -> 2 next instr bytes
// 6 -> 1 next instr bytes

wire [2:0] itype;

always @(*) begin
    if (reset) begin
        data_stack_addr <= 0;
        ret_stack_addr <= 0;
        prog_mem_addr <= 0;
    end
end

// figure out the instruction type from the opcode
always @(*) begin
    if (i_op[0] == 0)
        itype <= 3'd0;

    else if (i_op[4] == 0)
        if (i_op[7:5] != 3'b111)
            itype <= 3'd1;
        else
            itype <= 3'd2;

    else if (i_op[3] == 0)
        if (i_op[7:5] != 3'b111)
            itype <= 3'd3;
        else
            itype <= 3'd4;

    else if (i_op[2:1] != 3'b11)
        itype <= 3'd2;
        // call vs ret (and maybe short call vs short ret?)
    else
        // group others into 1 or 2 bytes extra in op encodings
        itype <= 3'd3;    
end



endmodule