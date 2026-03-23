/*Declare a 16-bit packed array of type bit named data and assign the value:
16'b1010_1010_1111_0000
Display the value using $display.*/
module packed_array;
  bit [15:0]data;
  initial begin
    data=16'b1010_1010_1111_0000;
  	$display("data=%0b",data);
  end
endmodule
