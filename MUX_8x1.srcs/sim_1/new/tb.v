`timescale 1ns / 1ps
module tb;
reg [7:0]in;
reg [2:0]sel;
wire out;

Mux_8x1 mux(in,sel,out);
initial
begin
    sel=3'b000;
    in=8'b10001110;    
end
always #10 sel=sel+3'b001;
endmodule
