//Static method = Class method → called using ClassName::method() without creating an object.
class transaction;
  bit [31:0] data;
  static int id;
  
  static function display(int id);
    $display("Value of id = %0h", id);
  endfunction
  
endclass

module tb;
  initial begin
    transaction::id = 5;
    transaction::display(transaction::id);
    
  end
endmodule
//Output
Value of id = 5
