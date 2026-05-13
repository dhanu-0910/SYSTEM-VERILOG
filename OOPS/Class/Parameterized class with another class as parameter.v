class error_transaction;
  bit [31:0]error_data;
  int error;
endclass

class transaction #(parameter n=3, type d_type=error_transaction);
  bit[n-1:0]data;
  d_type error_trans;
  function void display();
    $display("Data= %0d Error_data= %0d Error= %0d",data,error_trans.error_data,error_trans.error);
  endfunction
endclass

module tb;
  transaction t;
  initial begin
    t=new();
    t.error_trans=new();
    t.data=5;
    t.error_trans.error_data=10;
    t.error_trans.error=1;
    t.display();
  end
endmodule
//Output
Data= 5 Error_data= 10 Error= 1
