module tb;
  logic [4:0] a,b;
  initial begin;
    a= 0;//(a<->b=((a->b)&&(b->a))
    b= 0;
    if(a<->b)
      $display("True (%0d)",(a<->b));
    else
      $display("False (%0d)",(a<->b));    
    a= 0;
    b= 1;
    if(a<->b)
      $display("True (%0d)",(a<->b));
    else
      $display("False (%0d)",(a<->b));    
    a= 1;
    b= 0;
    if(a<->b)
      $display("True (%0d)",(a<->b));
    else
      $display("False (%0d)",(a<->b));    
    a= 1;
    b= 1;
    if(a<->b)
      $display("True (%0d)",(a<->b));
    else
      $display("False (%0d)",(a<->b));    
  end
endmodule
