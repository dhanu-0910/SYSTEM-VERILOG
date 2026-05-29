class data;
  rand bit [7:0]val1 = 29;
  rand bit [7:0]val2 = 39;
  
  constraint val1_c {val1 inside {6,5,[20:30]};}
  
  constraint val2_c {val2 inside {[30:60]};}
  
  function void pre_randomize();
    $display("-----Inside pre_randomize-----");
    this.rand_mode(0);
  endfunction
  
  function void post_randomize();
    $display("-----Inside post_randomize-----");
    $display("Value1= %0d Value2= %0d",this.val1,this.val2);
    $display("========================================");
  endfunction
  
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(5) begin
      d.randomize();
    end
  end
endmodule
//Output
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 39
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 39
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 39
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 39
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 39
========================================
