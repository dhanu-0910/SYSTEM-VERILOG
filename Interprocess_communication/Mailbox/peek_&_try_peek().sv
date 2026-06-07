module mail;

  mailbox mb = new(4);
  int roll_no;

  task producer();
    repeat(4) begin
      roll_no = $urandom_range(101,110);
      mb.put(roll_no);
      $display("Producer: Put Roll No = %0d", roll_no);
    end

    $display("--------------------------------");
  endtask

  task consumer();
    mb.peek(roll_no);
    $display("Consumer: First Peek = %0d", roll_no);

    mb.peek(roll_no);
    $display("Consumer: Second Peek = %0d", roll_no);

    if (mb.try_peek(roll_no))
      $display("Consumer: try_peek = %0d", roll_no);
    else
      $display("Consumer: Mailbox Empty");

    $display("--------------------------------");

    repeat(2) begin
      mb.get(roll_no);
      $display("Consumer: Get = %0d", roll_no);
    end

    $display("--------------------------------");

    mb.peek(roll_no);
    $display("Consumer: Peek After Get = %0d", roll_no);

    if (mb.try_peek(roll_no))
      $display("Consumer: try_peek After Get = %0d", roll_no);
    else
      $display("Consumer: Mailbox Empty");

    $display("--------------------------------");

    repeat(2) begin
      mb.get(roll_no);
      $display("Consumer: Get Remaining = %0d", roll_no);
    end

    $display("--------------------------------");

    if (mb.try_peek(roll_no))
      $display("Consumer: try_peek = %0d", roll_no);
    else
      $display("Consumer: Mailbox Empty");
  endtask

  initial begin
    fork
      producer();
      consumer();
    join
  end

endmodule
//Output
Producer: Put Roll No = 109
Producer: Put Roll No = 101
Producer: Put Roll No = 102
Producer: Put Roll No = 109
--------------------------------
Consumer: First Peek = 109
Consumer: Second Peek = 109
Consumer: try_peek = 109
--------------------------------
Consumer: Get = 109
Consumer: Get = 101
--------------------------------
Consumer: Peek After Get = 102
Consumer: try_peek After Get = 102
--------------------------------
Consumer: Get Remaining = 102
Consumer: Get Remaining = 109
--------------------------------
Consumer: Mailbox Empty
