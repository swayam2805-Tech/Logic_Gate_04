module nor_gate_tb;

    // Declare signals as registers for inputs
    reg a, b;
    // Declare signal as wire for output
    wire y;

    // Instantiate the Design Under Test (DUT)
    // The instance name (e.g., uut) is arbitrary.
    nor_gate uut (.a(a), .b(b), .y(y));

    // Initial block to apply test stimuli
    initial begin
        // Monitor signals and display output in the console
        $monitor("Time=%0t | A=%0b, B=%0b | Y=%0b", $time, a, b, y);

        // Apply all possible input combinations with delays
        
        // At Time 0: A=0, B=0, Y should be 1
        a = 0; b = 0; 
        #10; // Wait for 10 time units

        // At Time 10: A=0, B=1, Y should be 0
        a = 0; b = 1; 
        #10;

        // At Time 20: A=1, B=0, Y should be 0
        a = 1; b = 0; 
        #10;

        // At Time 30: A=1, B=1, Y should be 0
        a = 1; b = 1; 
        #10;

        $finish; // Terminate the simulation
    end
endmodule
