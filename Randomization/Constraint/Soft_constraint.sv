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
