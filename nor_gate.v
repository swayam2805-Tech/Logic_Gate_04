module nor_gate (
    output y, // Output port
    input a,  // Input port A
    input b   // Input port B
);

    // Instantiate the built-in 'nor' primitive
    // Format: nor instance_name (output, input1, input2, ...);
    nor u1 (y, a, b); 
    
endmodule
