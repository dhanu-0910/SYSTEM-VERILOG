task mul(input int v1,v2,output int res);
  #1;
  res=v1*v2;
endtask

module task1();
  
  int a=15;
  int b=16;
  int result;

  initial begin
    $display("\t ----output of global task----");
    mul(a,b,result);
    $display("Time= %0tns , %0d X %0d = %0d",$time,a,b,result);
  end
endmodule

module task2();
  int result; 
  initial begin
    #2;
    mul(70,80,result);
    $display("Time= %0tns , 7 X 8 = %0d",$time,result);
  end
endmodule
//Output

Time= 1ns , 15 X 16 = 240
Time= 3ns , 7 X 8 = 5600
