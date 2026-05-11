class vehicles;
  virtual function void display();
    $display("VEHICLES");
  endfunction
endclass

class car extends vehicles;
  function void display();
    $display("VEHICLES= CAR");
  endfunction
endclass

class bike extends vehicles;
  function void display();
    $display("VEHICLES= BIKE");
  endfunction
endclass

module tb;
  vehicles v;
  initial begin
    v=car::new();
    v.display();
    v=bike::new();
    v.display();
  end
endmodule

