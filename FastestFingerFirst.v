//Implementation of Fastest Finger First 

module FastestFingerFirst(player,display,decimal,control);

input [3:0]player;
output [7:0]display;
output [3:0]control;
output [3:0]decimal;

wire w1,w2,w3,w4,w9,reset,reset1,en;
wire [3:0]w5;
wire [3:0]w7;
wire [3:0]w8;

not n1(w1,player[0]);
not n2(w2,player[1]);
not n3(w3,player[2]);
not n4(w4,player[3]);

Dlatch_4bit latch(w1,w2,w3,w4,en,w5[0],w5[1],w5[2],w5[3]);

nand n5(w9,w5[0],w5[1],w5[2],w5[3]);
or n6(reset,player[0],player[1],player[2],player[3]);
nand n7(reset1,reset,w9);
and n8(en,reset1,reset1);

priority_encoder p_encoder(w7,w5);

Hex_inverter invert(w7[0],w7[1],w7[2],w7[3],w8[0],w8[1],w8[2],w8[3]);

Hex_7segment hexseven(w8,control,display);

//Using and gates

and a1(decimal[0],w8[0],w8[0]);
and a2(decimal[1],w8[1],w8[1]);
and a3(decimal[2],w8[2],w8[2]);
and a4(decimal[3],w8[3],w8[3]);

initial
begin
$monitor("%b\t%b\t\t%d\t",player,display,decimal);
end
endmodule
