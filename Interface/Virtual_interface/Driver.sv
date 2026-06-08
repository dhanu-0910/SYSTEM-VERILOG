class driver;

  virtual adder_if vif;

  function new(virtual adder_if vif);
    this.vif = vif;
  endfunction

  task run();
    vif.a = 10;
    vif.b = 5;

    #1;
    $display("a=%0d b=%0d sum=%0d",
              vif.a, vif.b, vif.sum);
  endtask

endclass
