module nor_buf_gate(A, B, Y);
    input A, B;
    output Y;
    wire nor_output;

    // NOR gate for A and B
    nor (nor_output, A, B);
    
    // Buffer to pass the NOR output through
    buf (Y, nor_output);
endmodule
