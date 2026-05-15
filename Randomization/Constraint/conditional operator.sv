class data;
  rand bit[6:0] mark;
  rand enum {BEST, AVERAGE, WORST} scale;
  
  constraint scale_c { 
    (scale==BEST) ? (mark inside {[90:100]}): (scale==AVERAGE) ? (mark inside {[40:89]}): (mark inside {[0:39]});
  }
    
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(10)begin
      d.randomize();
      $display("scale=%s mark=%0d",d.scale.name(),d.mark);
    end
  end
endmodule
//Output
scale=WORST mark=24
scale=WORST mark=36
scale=BEST mark=90
scale=BEST mark=97
scale=BEST mark=97
scale=BEST mark=96
scale=AVERAGE mark=77
scale=WORST mark=8
scale=AVERAGE mark=70
scale=BEST mark=94
