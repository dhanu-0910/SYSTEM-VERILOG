//snippet to insert one queue to another queue without or with array methods
module tb;
  int a[$]='{1,9,3,5,2,7};
  int b[$]='{2,4,3,5,6,7};
  initial begin
//  b={a,b}; without array method
//  $display("b=%p",b);
    foreach(a[i])begin
      b.push_back(a[i]);  //with array methods
    end
    $display("b=%p",b);    
  end
endmodule
