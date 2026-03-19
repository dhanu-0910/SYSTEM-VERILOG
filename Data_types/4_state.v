module tb_4_state; 
  logic [2:0]a;
  real b;
  time c;
  integer d;
  initial begin
    $display("Default value logic =%0d ",a);
    $display("Default value real =%0f",b);
    $display("Default value time =%0t",c);
    $display("Default value integer =%0d",d);
    a=4'b1001;
    $display("value logic =%0d ",a);
    a=3'b011;
    b=4.15;
    d=-3;
    #10;
    c=$time;
    $display("value logic =%0d ",a);
    $display("value real =%.1f",b);
    $display("value real =%.2f",b);
    $display("value time =%0t",c);
    $display("value integer =%0d",d);    
  end
endmodule

    
    
