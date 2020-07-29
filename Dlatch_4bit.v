//4 bit Bistable D latch

module Dlatch_4bit(d1,d2,d3,d4,en,q1,q2,q3,q4);

input d1,d2,d3,d4,en;
output q1,q2,q3,q4;
reg q1,q2,q3,q4;

//Latch 1
always @(en,d1)
if(en)
begin
q1<=d1;
end
//Latch 2
always @(en,d2)
if(en)
begin
q2<=d2;
end
//Latch 3
always @(en,d3)
if(en)
begin
q3<=d3;
end
//Latch 4
always @(en,d4)
if(en)
begin
q4<=d4;
end

endmodule
