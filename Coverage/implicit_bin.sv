 module f_c;
  
  logic [3:0]addr;
  logic [7:0]data;
  logic en;
  
  covergroup c_grp;
    option.per_instance=1;
    option.auto_bin_max=256;
    c1: coverpoint addr;
    c2: coverpoint data;
    c3: coverpoint en;
  endgroup
  
  c_grp c=new();
  
  initial 
    repeat(20) begin
      #1;
      addr= $random;
      data= $random;
      en= $random;
      c.sample();
      $display("addr= %0d, data= %0d, en= %0d",addr,data,en);
    end 
endmodule
  
  
