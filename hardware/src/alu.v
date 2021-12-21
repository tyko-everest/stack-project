module alu (
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [7:0] q,
    input wire [3:0] sel
);

always @(*) begin
    case (sel)
        4'b0000: q <= a + b;
        4'b0001: q <= a & b;
        4'b0010: q <= a | b;
        4'b0011: q <= a ^ b;
        4'b0100: q <= ~a;
        4'b0101: q <= -$signed(a);
        4'b0110: q <= a >> b;
        4'b0111: q <= $signed(a) >>> b;
        4'b1000: q <= a << b;
        4'b1001: q <= a;
    endcase
end
    
endmodule
