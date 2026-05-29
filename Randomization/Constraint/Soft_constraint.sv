class data;
  rand bit [7:0]val1;
  
  constraint val1_c{soft val1 inside {[10:40]};}
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(10) begin
      d.randomize();
      $display("Before Inline Constraint: ");
      $display("val1= %0d",d.val1);
      d.randomize with {val1 inside {[60:70]};};
      $display("After Inline Constraint: ");
      $display("val1= %0d",d.val1);
      $display("=============================================");
    end
  end
endmodule
//Output
Before Inline Constraint: 
val1= 18
After Inline Constraint: 
val1= 62
=============================================
Before Inline Constraint: 
val1= 25
After Inline Constraint: 
val1= 61
=============================================
Before Inline Constraint: 
val1= 30
After Inline Constraint: 
val1= 60
=============================================
Before Inline Constraint: 
val1= 24
After Inline Constraint: 
val1= 68
=============================================
Before Inline Constraint: 
val1= 30
After Inline Constraint: 
val1= 64
=============================================
Before Inline Constraint: 
val1= 21
After Inline Constraint: 
val1= 63
=============================================
Before Inline Constraint: 
val1= 10
After Inline Constraint: 
val1= 68
=============================================
Before Inline Constraint: 
val1= 11
After Inline Constraint: 
val1= 69
=============================================
Before Inline Constraint: 
val1= 12
After Inline Constraint: 
val1= 64
=============================================
Before Inline Constraint: 
val1= 37
After Inline Constraint: 
val1= 66
=============================================
