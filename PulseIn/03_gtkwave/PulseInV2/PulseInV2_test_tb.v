// Code generated by Icestudio 0.3.3
// Mon, 03 Dec 2018 00:31:59 GMT

// Testbench template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 10 ns / 1 ns


module main_tb
;
 
 // Simulation time: 100ns (10 * 10ns)
 parameter DURATION = 100;
 
 // Input/Output
 reg clk;
 reg reset;
 reg InPulse;
 wire [15:0] count;
 wire [15:0] valor;
 wire Ready;
 
 // Module instance
 main MAIN (
  .vd748c5(clk),
  .v80c520(reset),
  .vc31cf8(InPulse),
  .v0755f8(count),
  .vfb470d(valor),
  .v25a280(Ready)
 );
 
 // Clock signal
 always #0.5 clk = ~clk;
 
 initial begin
  // File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);
 
  // TODO: initialize the registers here
  // e.g. value = 1;
  // e.g. #2 value = 0;
  clk = 1;
  reset = 0;
  InPulse = 0;
  #4 InPulse=1;
  #10 InPulse=0;
  #4   InPulse=1;
  #1   InPulse=0;
  #4   InPulse=1;
  #3   reset=1;
  #1   reset=0;
  #4   InPulse=0;
  #5   InPulse=1;
  #3   InPulse=0;
  
 
  #(DURATION) $display("End of simulation");
  $finish;
 end
 
endmodule
