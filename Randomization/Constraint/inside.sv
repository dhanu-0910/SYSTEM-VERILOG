`define START_RANGE 55
`define END_RANGE 125

class data #(parameter int p1=25, p2=55);
  
  rand bit[7:0]a;
  rand bit[7:0]b;
  rand bit[7:0]c;
  rand bit[7:0]d;
  rand bit[7:0]e;
  rand bit[7:0]f;
  rand bit[7:0]g;
  rand bit[7:0]h;
  
  constraint a_c {a inside {3,5,26,38,45};}
  constraint b_c {b inside {[50:100]};}
  constraint c_c {c inside {[10:30],36,42,47,[50:240],249,253};}
  constraint d_c {!(d inside {[100:200]});}
  constraint e_c {e inside {[b:d]};}
  constraint f_c {f inside {[p1:p2]};}
  constraint g_c {g inside {[`START_RANGE:`END_RANGE]};}
  constraint h_c {h inside {[a:g]};}
  
endclass

module tb;
  data #(25,225)dt;
  initial begin
    dt=new();
    repeat(3) begin
      dt.randomize();
      $display("a=%0d b=%0d c=%0d d=%0d e=%0d f=%0d g=%0d h=%0d",dt.a,dt.b,dt.c,dt.d,dt.e,dt.f,dt.g,dt.h);
    end
  end
endmodule
//Output
a=26 b=53 c=65 d=238 e=167 f=104 g=118 h=50
a=38 b=96 c=213 d=232 e=202 f=162 g=109 h=82
a=45 b=60 c=88 d=237 e=143 f=200 g=118 h=45
