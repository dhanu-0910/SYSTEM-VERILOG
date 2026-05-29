class data;
  rand bit [7:0]value;
  rand bit enable;
  constraint c {
    solve enable before value;
                if(enable) {value inside {[10:50]}};}
                 
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(15) begin
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
Enable= 1 Value= 47 
=============================================
Enable= 1 Value= 15 
=============================================
Enable= 0 Value= 148 
=============================================
Enable= 1 Value= 24 
=============================================
Enable= 0 Value= 174 
=============================================
Enable= 0 Value= 11 
=============================================
Enable= 0 Value= 116 
=============================================
Enable= 0 Value= 97 
=============================================
Enable= 1 Value= 21 
=============================================
Enable= 1 Value= 14 
=============================================
Enable= 1 Value= 10 
=============================================
Enable= 0 Value= 158 
=============================================
Enable= 1 Value= 43 
=============================================

