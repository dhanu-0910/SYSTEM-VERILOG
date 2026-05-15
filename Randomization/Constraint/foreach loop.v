typedef enum {BEST, GOOD, AVERAGE, BAD, WORST} scale;
class data;
  rand bit[6:0]mark[scale];
  rand bit [3:0]array[];
  
  function new();
    mark[BEST]=0;
    mark[GOOD]=0;
    mark[AVERAGE]=0;
    mark[BAD]=0;
    mark[WORST]=0;
  endfunction
  
  constraint size_c{array.size() inside {[3:7]};}
  constraint array_c{foreach(array[i]) {array[i]>i*i};}
  constraint mark_c{foreach(mark[i]) 
  {
    mark[i]<100;
    (i==BEST) -> mark[i] inside {[90:100]};
    (i==GOOD) -> mark[i] inside {[75:90]};
    (i==AVERAGE) -> mark[i] inside {[55:75]};
    (i==BAD) -> mark[i] inside {[40:55]};
    (i==WORST) -> mark[i] inside {[0:39]};
  }}
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(5) begin
      d.randomize();
      foreach(d.array[i])
        $display("Array[%0d]= %0d",i,d.array[i]);
      foreach(d.mark[i])
        $display("Mark[%s]= %0d",i.name(),d.mark[i]);
    end
  end
endmodule
                    
//Output
Array[0]= 6
Array[1]= 8
Array[2]= 10
Array[3]= 10
Mark[BEST]= 98
Mark[GOOD]= 78
Mark[AVERAGE]= 62
Mark[BAD]= 46
Mark[WORST]= 36
Array[0]= 2
Array[1]= 14
Array[2]= 14
Mark[BEST]= 93
Mark[GOOD]= 90
Mark[AVERAGE]= 64
Mark[BAD]= 43
Mark[WORST]= 33
Array[0]= 3
Array[1]= 2
Array[2]= 13
Array[3]= 14
Mark[BEST]= 94
Mark[GOOD]= 82
Mark[AVERAGE]= 66
Mark[BAD]= 47
Mark[WORST]= 38
Array[0]= 15
Array[1]= 4
Array[2]= 13
Array[3]= 10
Mark[BEST]= 95
Mark[GOOD]= 89
Mark[AVERAGE]= 59
Mark[BAD]= 41
Mark[WORST]= 19
Array[0]= 9
Array[1]= 13
Array[2]= 14
Array[3]= 11
Mark[BEST]= 94
Mark[GOOD]= 86
Mark[AVERAGE]= 71
Mark[BAD]= 40
Mark[WORST]= 22
            
