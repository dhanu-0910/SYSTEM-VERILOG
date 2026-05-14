module tb;
  bit [2:0]data;
  bit [7:0]id;
  function bit[2:0] rand_c;
    while(1)begin
      data=$random;
      if(!id[data]) begin
        id[data]=1;
        return data;
      end
      else if(&id) begin
        id=0;
        id[data]=1;
        break;
      end
    end
    return data;
  endfunction
  
  initial begin
    repeat(3) begin
      repeat(8)
        $display("data= %0d",rand_c());
      $display("----------------");
    end
  end
endmodule
      
        
  //Output
data= 4
data= 1
data= 3
data= 5
data= 2
data= 6
data= 7
data= 0
----------------
data= 5
data= 4
data= 3
data= 2
data= 0
data= 6
data= 7
data= 1
----------------
data= 0
data= 1
data= 3
data= 6
data= 4
data= 2
data= 5
data= 7
----------------
