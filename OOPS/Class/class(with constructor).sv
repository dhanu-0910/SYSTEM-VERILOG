class arithmetic;
  int p;
  int q;
  int r;
  function new(int p=0, int q=0);
    this.p = p;
    this.q = q;
    r = p + q;
  endfunction

  function display();
    $display("Sum=%0d", r);
  endfunction
endclass


module tb;
  arithmetic a1, a2;

  initial begin
    a1 = new();   
    a2 = a1;
    a2.display();  
    a1=new(4,5);//Here a1 points to new object whereas a2 still points towards old object so a2 is still 0.
    a2.display();
    a1.display();
  end
endmodule
//output
Sum=0
Sum=0
Sum=9
