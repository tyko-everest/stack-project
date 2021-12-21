`include "src/mem.v"

module top (
    input CLK
);

wire clk;
assign clk = CLK;

`include "src/consts.vh"

wire [STACK_WIDTH-1:0] data_stack_out;
wire [STACK_WIDTH-1:0] data_stack_in;
wire [DATA_STACK_SIZE-1:0] data_stack_addr;
wire data_stack_wen;

wire [STACK_WIDTH-1:0] ret_stack_out;
wire [STACK_WIDTH-1:0] ret_stack_in;
wire [RET_STACK_SIZE-1:0] ret_stack_addr;
wire ret_stack_wen;

wire [PROG_MEM_WIDTH-1:0] prog_mem_out;
wire [PROG_MEM_SIZE-1:0] prog_mem_addr;


mem #(.ADDR_WIDTH(DATA_STACK_SIZE), .DATA_WIDTH(STACK_WIDTH))
data_stack (
    .out(data_stack_out),
    .in(data_stack_in),
    .addr(data_stack_addr),
    .wen(data_stack_wen),
    .clk(clk)
);

mem #(.ADDR_WIDTH(RET_STACK_SIZE), .DATA_WIDTH(STACK_WIDTH))
ret_stack (
    .out(ret_stack_out),
    .in(ret_stack_in),
    .addr(ret_stack_addr),
    .wen(ret_stack_wen),
    .clk(clk)
);

mem #(.ADDR_WIDTH(PROG_MEM_SIZE), .DATA_WIDTH(PROG_MEM_WIDTH))
prog_mem (
    .out(prog_mem_out),
    .in(4'b0),
    .addr(prog_mem_addr),
    .wen(1'b0),
    .clk(clk)
);


endmodule
