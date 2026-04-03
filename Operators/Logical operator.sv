module tb;
  logic [3:0] a,b,c;
  int x;
  initial begin;
    a= 15;
    b= 9;
    c= 1;
    x = a||b;
    $display("Logic OR = %0b",x);    
    x = a&&b;
    $display("Logic AND = %0b",x);    
    x = !c;
    $display("Logic Negation = %0b",x);
    c=0;
    x = !c;
    $display("Logic Negation = %0b",x);        
    x = (!a||b);
    $display("Logic OR = %0b",x);
    b=0;
    x = (!a||b);
    $display("Logic OR = %0b",x);
    x = (a&&!b);
    $display("Logic AND = %0b",x);  
    b=0;
    x = (a&&!b);
    $display("Logic AND = %0b",x);  
  end
endmodule
