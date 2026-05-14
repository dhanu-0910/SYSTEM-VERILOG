module mail;
  mailbox mb=new(4);
  
  task process_A();
    int a;
    repeat(4) begin
      a=$urandom_range(1,50);
      mb.put(a);
      $display("Put data= %0d",a);
    end
  endtask
  
  
  task process_B();
    int a;
    mb.peek(a);
    $display("Peek data= %0d",a);
    mb.peek(a);
    $display("Peek data= %0d",a);
    if(mb.try_peek(a))
      $display("Success in try_peek data= %0d",a);
    else
      $display("Failed in try_peek data= %0d",a);
    repeat(4) begin
      a=$urandom_range(1,50);
      mb.get(a);
      $display("Get data= %0d",a);
    end
    if(mb.try_peek(a))
      $display("Success in try_peek data= %0d",a);
    else
      $display("Failed in try_peek data= %0d",a);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
  
endmodule
//Output
Put data= 49
Put data= 1
Put data= 42
Put data= 19
Peek data= 49
Peek data= 49
Success in try_peek data= 49
Get data= 49
Get data= 1
Get data= 42
Get data= 19
Failed in try_peek data= 19
