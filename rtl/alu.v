module alu(
    input [3:0] a, // first number (4 bits)
    input [3:0] b, // second number (4 bits)
    input [1:0] op, // operation selector
    output reg [3:0] result // answer (4 bits)
);

// op = 00 → ADD
// op = 01 → SUB  
// op = 10 → AND
// op = 11 → OR

always @(*) begin
    case(op)
        2'b00: result = a + b;
        2'b01: result = a - b;
        2'b10: result = a & b;
        2'b11: result = a | b;
        default: result = 4'b0000;
    endcase
end

endmodule