class data;
  rand bit [7:0]value;
  rand bit enable;
  constraint c {if(enable) {value inside {[10:50]}};}
                 
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(10) begin
      d.randomize();
      $display("Enable= %0d Value= %0d ",d.enable,d.value);
      $display("=============================================");
    end
  end
endmodule

//Output

Enable= 0 Value= 8 
=============================================
Enable= 0 Value= 163 
=============================================
Enable= 1 Value= 30 
=============================================
Enable= 1 Value= 10 
=============================================
Enable= 0 Value= 148 
=============================================
Enable= 0 Value= 96 
=============================================
Enable= 0 Value= 174 
=============================================
Enable= 0 Value= 11 
=============================================
Enable= 0 Value= 116 
=============================================
Enable= 0 Value= 97 
=============================================
