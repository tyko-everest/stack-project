module mem #(
    parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 8
) (
    output reg [DATA_WIDTH-1:0] out,
    input wire [DATA_WIDTH-1:0] in,
    input wire [ADDR_WIDTH-1:0] addr,
    input wire wen, clk
);

reg [DATA_WIDTH-1:0] mem [1<<ADDR_WIDTH-1:0];

always @(posedge clk) begin
    if (wen) begin
        mem[addr] <= in;
    end
    out <= mem[addr];
end

endmodule
