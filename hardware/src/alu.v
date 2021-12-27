module alu (
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [7:0] q,
    input wire [2:0] fn_sel,
    input wire arg_cnt
);

always @(*) begin
    if (arg_cnt)
        case (fn_sel)
            3'd0: q <= a + b;
            3'd1: q <= a - b;
            3'd2: q <= a & b;
            3'd3: q <= a | b;
            3'd4: q <= a ^ b;
            3'd5: q <= $signed(a) >>> b;
            3'd6: q <= a >> b;
            3'd7: q <= a << b;
        endcase 
    else
        case (fn_sel)
            3'd2: q <= a;
            3'd2: q <= ~a;
            3'd2: q <= -$signed(a);
            default: q <= 8'hXX;
        endcase
end
    
endmodule
