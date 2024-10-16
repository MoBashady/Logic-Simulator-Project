module xor_nor_gate(A, B, C, Y);
    input A, B, C;
    output Y;
    wire xor_output;

    // XOR gate for A and B
    xor (xor_output, A, B);
    
    // NOR gate for the result of XOR and input C
    nor (Y, xor_output, C);
endmodule
