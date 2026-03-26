module tb_2_state;
  bit [3:0]a;
  byte b;
  int c;
  shortint d;
  longint e;
  initial begin
    $display("Default value bit =%0d ",a);
    $display("Default value byte =%0d",b);
    $display("Default value int =%0d",c);
    $display("Default value shortint =%0d",d);
    $display("Default value longint =%0d",e);
    a=4'b10xz;
    b=8'b10000001;
    $display("value byte =%0d",b);
    b=8'b01000001;
    c=16;
    d=c+c;
    e=18;
    $display("value bit =%0b ",a);
    $display("value byte =%0d",b);
    $display("value int =%0d",c);
    $display("value shortint =%0d",d);
    $display("value longint =%0b",e);    
  end
endmodule

    
    
