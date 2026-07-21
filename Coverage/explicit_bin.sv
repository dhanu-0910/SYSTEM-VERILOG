 module f_c;
  
  logic [3:0]addr;
   logic [2:0]data;
  logic en;
  
  covergroup c_grp;
    option.per_instance=1;
    c1: coverpoint addr{bins b1= {1,10,12};
                        bins b2[] = {[2:9],11};
                        bins zero_to_seven[4]= {[0:7]};}
    c2: coverpoint data {bins b1= {[5:$]};
                         bins b2[]= {2,3,6};
                         bins others= default;}
    c3: coverpoint en {bins one= {1};}
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
  
  
