module f_c;
  bit [3:0]a;
  
  covergroup c_grp;
    option.per_instance=1;
    c1: coverpoint a{
      illegal_bins b= {10,11,12};}
  endgroup
  
  initial begin
    c_grp c;
    c=new();
    repeat(25) begin
      a=$urandom;
      c.sample();
      $display("a=%0d",a);
    end
  end
endmodule
