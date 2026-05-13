class vehicle;
      bit [31:0]id;
      string name;
      extern function void display();
      extern task delay();
    endclass
    
    function void vehicle::display();
      $display("Name= %0s ID= %0d",name,id);
    endfunction
    
    task vehicle::delay();
      #25;
      $display("Time=%0t ID= %0d",$time,id);
    endtask
    
    module tb;
      vehicle v;
      initial begin
        v=new();
        v.name="Car";
        v.id=125;
        v.display();
        v.delay();
        v.name="Bike";
        v.id=529;
        v.display();
        v.delay();
      end
    endmodule
        //Output
        Name= Car ID= 125
        Time=25 ID= 125
        Name= Bike ID= 529
        Time=50 ID= 529
