module func;
  
  task static s_count();
    
    static int c1;
    automatic int c2;
    int c3;
    c1++;
    c2++;
    c3++;
    $display("Static: c1= %0d | c2= %0d | c3= %0d",c1,c2,c3);
    
  endtask
  
  task automatic a_count();
    
    static int c1;
    automatic int c2;
    int c3;
    c1++;
    c2++;
    c3++;
    $display("Automatic: c1= %0d | c2= %0d | c3= %0d",c1,c2,c3);
    
  endtask
  
  task n_count();
    
    static int c1;
    automatic int c2;
    int c3;
    c1++;
    c2++;
    c3++;
    $display("Normal: c1= %0d | c2= %0d | c3= %0d",c1,c2,c3);
    
  endtask 
  
  initial begin
    
    $display("Calling static function");
    s_count();
    s_count();
    s_count();
    $display("\nCalling automatic function");
    a_count();
    a_count();
    a_count();    
    $display("\nCalling normal function");
    n_count();
    n_count();
    n_count();  
    $display("\nStatic: c1= %0d",s_count.c1);
    $display("Automatic: c1= %0d",a_count.c1);
    $display("Normal: c1= %0d",n_count.c1);
    $display("\nStatic: c3= %0d",s_count.c3);
    $display("Normal: c3= %0d",n_count.c3);
        
  end
endmodule

  //Output
Calling static function
Static: c1= 1 | c2= 1 | c3= 1
Static: c1= 2 | c2= 1 | c3= 2
Static: c1= 3 | c2= 1 | c3= 3

Calling automatic function
Automatic: c1= 1 | c2= 1 | c3= 1
Automatic: c1= 2 | c2= 1 | c3= 1
Automatic: c1= 3 | c2= 1 | c3= 1

Calling normal function
Normal: c1= 1 | c2= 1 | c3= 1
Normal: c1= 2 | c2= 1 | c3= 2
Normal: c1= 3 | c2= 1 | c3= 3

Static: c1= 3
Automatic: c1= 3
Normal: c1= 3

Static: c3= 3
Normal: c3= 3
