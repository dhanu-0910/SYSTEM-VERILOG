class data;
  rand bit [7:0]val1;
  rand bit [7:0]val2;
  
  constraint val1_c {val1 inside {6,5,[20:30]};}
  
  constraint val2_c {val2 inside {[30:60]};}
  
  function void pre_randomize();
    $display("-----Inside pre_randomize-----");
    val2_c.constraint_mode(0);
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
    d.randomize();
    repeat(10) begin
      d.randomize();
    end
  end
endmodule
//Output
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 8
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 24 Value2= 163
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 27 Value2= 239
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 28 Value2= 69
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 29 Value2= 148
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 20 Value2= 142
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 28 Value2= 174
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 22 Value2= 11
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 20 Value2= 116
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 24 Value2= 97
========================================
-----Inside pre_randomize-----
-----Inside post_randomize-----
Value1= 26 Value2= 75
========================================
