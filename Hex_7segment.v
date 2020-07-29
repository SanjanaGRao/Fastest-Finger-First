//hex - 7segment 
module Hex_7segment(hex,control,seven_segment);

input [3:0]hex;
output[7:0]seven_segment;
reg [7:0]seven_segment;
output reg [3:0]control;

initial
begin
seven_segment=8'b11111100;
control=4'b1110;
end

always @*
begin
control=4'b1101;
case(hex)

4'b0000:begin seven_segment=8'b11111100;
        end
4'b0001:begin seven_segment=8'b01100000;
        end		  
4'b0010:begin seven_segment=8'b11011010;
        end
4'b0011:begin seven_segment=8'b11110010;
        end
4'b0100:begin seven_segment=8'b01100110;
        end
4'b0101:begin seven_segment=8'b10110110;
        end
4'b0110:begin seven_segment=8'b10111110;
        end
4'b0111:begin seven_segment=8'b11100000;
        end
4'b1000:begin seven_segment=8'b11111110;
        end
4'b1001:begin seven_segment=8'b11110110;
        end
endcase
end		  
endmodule
