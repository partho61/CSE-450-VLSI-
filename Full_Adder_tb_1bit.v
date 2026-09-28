`timescale 1ns / 1ps

module Full_adder_tb;

reg A;
reg B;
reg Cin;

wire S;
wire Cout;

Full_Adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

initial begin

A=0; B=0; Cin=0;
#10 A=0; B=0; Cin=1;
#10 A=0; B=1; Cin=0;
#10 A=0; B=1; Cin=1;
#10 A=1; B=0; Cin=0;
#10 A=1; B=0; Cin=1;
#10 A=1; B=1; Cin=0;
#10 A=1; B=1; Cin=1;
#10 $finish;

end

endmodule