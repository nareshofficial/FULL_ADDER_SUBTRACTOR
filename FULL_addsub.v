module FULL_addsub(a,b,cin,sum,carry,BO,DIFF);
input a,b,cin;
output sum,carry,BO,DIFF;
assign sum = a^b^cin;
assign carry = (a&b) | (b&cin) | (a&cin);
wire a0;
not (a0,a);
//Write syntax for full subtractor Borrow and Difference in data flow modelling
assign DIFF = a^b^cin;
assign BO = (a0&b) | (b&cin) | (a0&cin);
endmodule
