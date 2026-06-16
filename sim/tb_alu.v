module tb_alu;

    // create test wires
    reg [3:0] a;
    reg [3:0] b;
    reg [1:0] op;
    wire [3:0] result;

    // connect to your ALU
    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    initial begin
        $dumpfile("tb_alu.vcd");
        $dumpvars(0, tb_alu);

        // Test ADD: 3 + 2 = 5
        a = 4'b0011; b = 4'b0010; op = 2'b00;
        #10;
        $display("ADD: %d + %d = %d", a, b, result);

        // Test SUB: 5 - 3 = 2
        a = 4'b0101; b = 4'b0011; op = 2'b01;
        #10;
        $display("SUB: %d - %d = %d", a, b, result);

        // Test AND: 1100 & 1010 = 1000
        a = 4'b1100; b = 4'b1010; op = 2'b10;
        #10;
        $display("AND: %b & %b = %b", a, b, result);

        // Test OR: 1100 | 1010 = 1110
        a = 4'b1100; b = 4'b1010; op = 2'b11;
        #10;
        $display("OR: %b | %b = %b", a, b, result);

        $display("ALL TESTS DONE!");
        $finish;
    end

endmodule