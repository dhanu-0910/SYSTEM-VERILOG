module mail;
  mailbox mb=new(2);
  
  task process_A();
    int a;
    repeat(4) begin
      a=$urandom_range(1,50);
      if(mb.try_put(a))
        $display("Successfully try_put data= %0d",a);
      else begin
        $display("Failed to try_put data= %0d",a);
        $display("Number of data in mailbox =%0d",mb.num());
      end
    end
  endtask
  
  task process_B();
    int a;
    repeat(4) begin
      a=$urandom_range(1,50);
      if(mb.try_get(a))
        $display("Successfully try_get data= %0d",a);
      else begin
        $display("Failed to try_get data= %0d",a);
        $display("Number of data in mailbox =%0d",mb.num());
      end
    end
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
  
endmodule
//Output
Successfully try_put data= 49
Successfully try_put data= 1
Failed to try_put data= 42
Number of data in mailbox =2
Failed to try_put data= 19
Number of data in mailbox =2
Successfully try_get data= 49
Successfully try_get data= 1
Failed to try_get data= 18
Number of data in mailbox =0
Failed to try_get data= 30
Number of data in mailbox =0
