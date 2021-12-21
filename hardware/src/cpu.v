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

always @(*) begin
    if (reset) begin
        data_stack_addr <= 0;
        ret_stack_addr <= 0;
        prog_mem_addr <= 0;
    end
end



endmodule