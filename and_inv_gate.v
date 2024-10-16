module and_inv_gate(A, B, Y);
    input A, B;
    output Y;
    wire and_output;

    // Standard AND gate
    and (and_output, A, B);
    
    // Inverting the AND gate output
    not (Y, and_output);
endmodule