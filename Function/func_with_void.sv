module func;
  
  function void check_even(int num);
    if(num % 2 == 0)
      $display("Even Number");
    else
      $display("Odd Number");
  endfunction
  
  initial begin
    check_even(25);
  end
  
endmodule
//Output
Odd Number
Even Number
