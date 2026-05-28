class data;
  rand bit[5:0]a;
  rand bit[5:0]b;
  
  constraint a_c{a inside {[10:25]};}
  static constraint b_c{b inside {[26:31]};}
  
endclass

module tb;
  data d1,d2;
  initial begin
    d1=new();
    d2=new();
    d1.randomize();
    d2.randomize();
    $display("Before disabling constraint:");
    $display("D1: A= %0d B= %0d",d1.a,d1.b);
    $display("D2: A= %0d B= %0d",d2.a,d2.b);
    d2.b_c.constraint_mode(0);
    d1.randomize();
    d2.randomize();
    $display("After disabling constraint of b for D2:");
    $display("D1: A= %0d B= %0d",d1.a,d1.b);
    $display("D2: A= %0d B= %0d",d2.a,d2.b);
    d2.b_c.constraint_mode(1);
    d1.a_c.constraint_mode(0);
    d1.randomize();
    d2.randomize();
    $display("After disabling constraint of a for D1:");
    $display("D1: A= %0d B= %0d",d1.a,d1.b);
    $display("D2: A= %0d B= %0d",d2.a,d2.b);
    d1.a_c.constraint_mode(1);
    d1.b_c.constraint_mode(0);
    d1.randomize();
    d2.randomize();
    $display("After disabling constraint of b for D1:");
    $display("D1: A= %0d B= %0d",d1.a,d1.b);
    $display("D2: A= %0d B= %0d",d2.a,d2.b); 
  end
endmodule

//Output
Before disabling constraint:
D1: A= 25 B= 31
D2: A= 24 B= 26
After disabling constraint of b for D2:
D1: A= 17 B= 35
D2: A= 10 B= 10
After disabling constraint of a for D1:
D1: A= 47 B= 30
D2: A= 22 B= 27
After disabling constraint of b for D1:
D1: A= 18 B= 5
D2: A= 24 B= 1
