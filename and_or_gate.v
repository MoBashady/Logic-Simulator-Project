module and_or_gate(A, B, C, Y);
    input A, B, C;
    output Y;
    wire and_output;

    // AND gate for A and B
    and (and_output, A, B);
    
    // OR gate for the result of AND and input C
    or (Y, and_output, C);
endmodule
