module FA(input a,b,cin , output sum,cout);
assign sum = a ^ b ^ cin;
assign cout = a & b | b & cin | cin & a; 
endmodule


module RCA(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] SUM,
    output Cout
    );
    wire C1,C2,C3;  
   FA  fa0(.a(A[0]),.b(B[0]),.cin(Cin) ,.sum(SUM[0]),.cout(C1));
   FA  fa1(.a(A[1]),.b(B[1]),.cin(C1) ,.sum(SUM[1]),.cout(C2));
  FA   fa2(.a(A[2]),.b(B[3]),.cin(C2) ,.sum(SUM[2]),.cout(C3));
   FA  fa3(.a(A[3]),.b(B[3]),.cin(C3) ,.sum(SUM[3]),.cout(Cout));
endmodule

