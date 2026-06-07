module mail;

  mailbox mb = new(2);

  task producer();
    int data;
    repeat(4) begin
      data = $urandom_range(100,200);

      if (mb.try_put(data))
        $display("Producer: Successfully inserted %0d", data);
      else begin
        $display("Producer: Mailbox full, failed to insert %0d", data);
        $display("Producer: Mailbox count = %0d", mb.num());
      end
    end

    $display("--------------------------------");
  endtask

  task consumer();
    int data;

    repeat(4) begin

      if (mb.try_get(data))
        $display("Consumer: Retrieved value = %0d", data);
      else begin
        $display("Consumer: Mailbox empty during get");
        $display("Consumer: Mailbox count = %0d", mb.num());
      end
    end

  endtask

  initial begin
    fork
      producer();
      consumer();
    join
  end

endmodule
//Output
Producer: Successfully inserted 118
Producer: Successfully inserted 139
Producer: Mailbox full, failed to insert 185
Producer: Mailbox count = 2
Producer: Mailbox full, failed to insert 186
Producer: Mailbox count = 2
--------------------------------
Consumer: Retrieved value = 118
Consumer: Retrieved value = 139
Consumer: Mailbox empty during get
Consumer: Mailbox count = 0
Consumer: Mailbox empty during get
Consumer: Mailbox count = 0
