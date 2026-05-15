class data;
  rand bit[4:0]value1;
  rand bit[4:0]value2;
  
  constraint value1_c {value1 dist {2:/5, [5:10]:/5};}
  constraint value2_c {value2 dist {2:=5, [5:10]:=5};} 
endclass

module tb;
  data d;
  initial begin
    d=new();
    repeat(7) begin
      d.randomize();
      $display("Value1(:/)= %0d Value2(:=)= %0d",d.value1,d.value2);
    end
  end
endmodule
//Output
Value1(:/)= 2 Value2(:=)= 6
Value1(:/)= 2 Value2(:=)= 5
Value1(:/)= 10 Value2(:=)= 8
Value1(:/)= 2 Value2(:=)= 2
Value1(:/)= 2 Value2(:=)= 8
Value1(:/)= 8 Value2(:=)= 6
Value1(:/)= 2 Value2(:=)= 6
