`timescale 1ns / 1ps
module Mux_8x1(in,sel,out);
input [7:0]in;
input [2:0]sel;
output  out;
wire w1,w2;
 mux_4x1 m1 (in[3:0],sel[1:0],w1);
 mux_4x1 m2 (in[7:4],sel[1:0],w2);
 mux_2x1 m3 (w1,w2,sel[2],out);
endmodule


//Mux 2x1
module mux_2x1(a1,a2,s,t1);
input a1,a2;
input s;
output reg t1;

always@(*)
begin
    if(s==1'b0)
        t1=a1;
    else
        t1=a2;
end
endmodule

//Mux 4x1
module mux_4x1(x,s,t2);
input [3:0]x;
input [1:0]s;
output reg t2;
 always@(*)
 begin
    case(s)
        0: t2=x[0];
        1: t2=x[1];
        2: t2=x[2];
        3: t2=x[3];
    endcase
 end

endmodule
