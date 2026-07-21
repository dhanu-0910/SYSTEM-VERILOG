
//TB
module f_c;
  logic [3:0] mode;
  covergroup c_grp(ref logic [3:0]var_name,
                input int lower,higher,
                   input string instance_name);
    option.per_instance=1;
    option.name=instance_name;
    cp: coverpoint var_name{ bins b[]= {[lower:higher]};}
  endgroup
  
  c_grp cg1,cg2,cg3,cg4;
  
  initial begin
    cg1= new(mode,0,3,"Arithmetic_operation");
    cg2= new(mode,4,7,"Logical_operattion");
    cg3= new(mode,8,11,"Shift_operattion");
    cg4= new(mode,12,15,"Jump_operattion");
    
    forever begin
      mode=$urandom();
      cg1.sample();
      cg2.sample();
      cg3.sample();
      cg4.sample();
      #10;
    end
  end
  initial begin
    #700;
    $stop();
  end
endmodule
