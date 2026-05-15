class parent;
  rand bit [3:0]a;
  rand bit [7:0]b;
  constraint a_c {b== square(a);}
  
  function bit [7:0]square(bit [3:0]x);
    return x*x;
  endfunction
  
endclass

module tb;
  parent p;
  initial begin
    p=new();
    repeat(5) begin
      p.randomize();
      $display("A= %0d B= %0d",p.a,p.b);
    end
  end
endmodule
//Output
A= 0 B= 0
A= 8 B= 64
A= 5 B= 25
A= 7 B= 49
A= 12 B= 144
