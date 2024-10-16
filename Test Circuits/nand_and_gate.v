module nand_and_gate(A, B, C, Y);
    input A, B, C;
    output Y;
    wire nand_output;

    // NAND gate for A and B
    nand (nand_output, A, B);
    
    // AND gate for the result of NAND and input C
    and (Y, nand_output, C);
endmodule
