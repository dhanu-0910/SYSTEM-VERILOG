class seq_item;
  rand bit [7:0] val1, val2, val3, val4;
  rand bit t1, t2;
  
  constraint val_c {val2 > val1; 
                   val3 == val2 - val1;
                   val4 < val3;
                   val4 == val1/val3; }
  
  constraint t_c { (t1 == 1) -> t2 == 0;}
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("val1 = %0d, val2 = %0d, val3 = %0d, val4 = %0d", item.val1, item.val2, item.val3, item.val4);
      $display("t1 = %0h, t2 = %0h", item.t1, item.t2);
    end
  end
endmodule

//Output

D1= 64
D2= 42
D3= 22
D4= 2 
P1= 0 P2= 1
=============================================
D1= 56
D2= 43
D3= 13
D4= 4 
P1= 1 P2= 0
=============================================
D1= 30
D2= 0
D3= 30
D4= 1 
P1= 0 P2= 0
=============================================
D1= 146
D2= 43
D3= 103
D4= 1 
P1= 0 P2= 0
=============================================
D1= 146
D2= 25
D3= 121
D4= 1 
P1= 0 P2= 0
=============================================
