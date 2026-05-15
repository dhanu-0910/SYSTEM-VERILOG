class data;
  rand bit[5:0]a;
  rand bit[5:0]b;
  
  constraint a_c{a inside {[10:25]};}
  constraint b_c{b inside {[26:31]};}
  
endclass

module tb;
  data d;
  initial begin
    d=new();
    d.randomize();
    $display("Before disabling randomization: A=%0d B=%0d",d.a,d.b);
    d.rand_mode(0);
    d.randomize();
    $display("After disabling randomization: A=%0d B=%0d",d.a,d.b);
    d.rand_mode(1);
    d.randomize();
    $display("After enabling randomization: A=%0d B=%0d",d.a,d.b);
    d.b.rand_mode(0);
    d.randomize();
    $display("After disabling randomization for b alone: A=%0d B=%0d",d.a,d.b);
    $display("Rand_mode of both variables: A=%0d B=%0d",d.a.rand_mode(),d.b.rand_mode());
  end
endmodule
//Output
Before disabling randomization: A=25 B=31
After disabling randomization: A=25 B=31
After enabling randomization: A=20 B=28
After disabling randomization for b alone: A=18 B=28
Rand_mode of both variables: A=1 B=0
