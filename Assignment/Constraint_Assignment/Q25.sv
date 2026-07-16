// write a constraint to generate a variable with 0-31 bits should be 1 and
// 32-61 bits should be 0.

class packet;
  rand bit [61:0]data;
  constraint c1 {
    foreach(data[i])
      if(i<=31)
        data[i]==1;
      else
        data[i]==0;
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    if(p.randomize()) 
      $display("Data= %062b",p.data);
    else
      $display("Randomization Failed");
  end
endmodule
  
