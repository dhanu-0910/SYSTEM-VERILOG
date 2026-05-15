//Child overrides parent...Only child constraint applies for child
class parent;
  rand bit [5:0]data;
  constraint data_c {data>5; data<15;}
endclass

class child extends parent;
  constraint data_c {data inside {[10:30]};}
endclass

module tb;
  parent p;
  child c;
  initial begin
    p=new();
    c=new();
    repeat(5) begin
      p.randomize();
      $display("BASE: data=%0d",p.data);
    end
    repeat(5) begin
      c.randomize();
      $display("CHILD: data=%0d",c.data);
    end
  end
endmodule
//Output
BASE: data=6
BASE: data=14
BASE: data=11
BASE: data=13
BASE: data=10
CHILD: data=13
CHILD: data=23
CHILD: data=26
CHILD: data=21
CHILD: data=17
    
