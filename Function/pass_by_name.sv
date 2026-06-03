module function_example;
  int a, b;
  
  function void fn_pass(string name, int val);
    $display("Function: Values passed by name: %s, %0d", name, val);
  endfunction

  initial begin
    fn_pass(.val(100), .name("Dhanu"));
    fn_pass(.val(100), .name("Bharathi"));
  end
endmodule

//Output
Function: Values passed by name: Dhanu, 100
Function: Values passed by name: Bharathi, 100
