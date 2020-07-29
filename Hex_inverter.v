//Hex inverter
module Hex_inverter(a,b,c,d,w,x,y,z);

input a,b,c,d;
output w,x,y,z;

not n1(w,a);
not n2(x,b);
not n3(y,c);
not n4(z,d);

endmodule
