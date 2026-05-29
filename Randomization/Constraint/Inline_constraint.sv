class data;
  rand bit [7:0]val1,val2;
  
  constraint val1_c{val1>40; val1<90;}
  constraint val2_c{val2 inside {[10:40]};}
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(5) begin
      d.randomize();
      $display("Before Inline Constraint: ");
      $display("val1= %0d val2= %0d",d.val1,d.val2);
      d.randomize with {val1>50; val1<60;};
      d.randomize with {val2 inside {[20:30]};};
      $display("After Inline Constraint: ");
      $display("val1= %0d val2= %0d",d.val1,d.val2);
      $display("=============================================");
    end
  end
endmodule

//Output
Before Inline Constraint: 
val1= 57 val2= 26
After Inline Constraint: 
val1= 88 val2= 20
=============================================
Before Inline Constraint: 
val1= 48 val2= 31
After Inline Constraint: 
val1= 55 val2= 26
=============================================
Before Inline Constraint: 
val1= 87 val2= 37
After Inline Constraint: 
val1= 57 val2= 21
=============================================
Before Inline Constraint: 
val1= 49 val2= 39
After Inline Constraint: 
val1= 50 val2= 28
=============================================
Before Inline Constraint: 
val1= 58 val2= 16
After Inline Constraint: 
val1= 54 val2= 25
=============================================
