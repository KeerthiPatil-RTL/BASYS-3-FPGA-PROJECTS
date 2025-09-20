module TB;
 reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] SUM;
    wire Cout;
  RCA CUT( .A(A) , .B(B), .Cin(Cin), .SUM(SUM), .Cout(Cout));
 initial begin
$monitor("time = %0t | A=%d B=%d Cin=%d | SUM=%d Cout=%d\n" ,$time,A,B,Cin,SUM,Cout);
A = 4'b0000 ; B =4'B0010 ; Cin = 1'b1; #5;
A = 4'b0110 ; B =4'B0010 ; Cin = 1'b0; #5;
#5;    
$finish;
end
endmodule
