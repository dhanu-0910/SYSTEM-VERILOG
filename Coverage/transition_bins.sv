module mealy(input logic rst,clk,x, output logic y);
  typedef enum bit[1:0] {s0,s1} states;
  states ps,ns;
  always_ff @(posedge clk) begin
    if(rst)
      ps<=s0;
    else
      ps<=ns;
  end 
  
  always_comb begin
    case(ps)
      s0: begin
        y=0;
        if(x)
          ns=s1;
        else
          ns=s0;
      end
      s1: begin
        if(x) begin
          ns=s0;
          y=1;
        end
        else begin
          ns=s1;
          y=0;
        end
      end
      default: begin
        ns=s0;
        y=0;
      end
    endcase
  end
endmodule

//TB

module tb;
  logic clk=0,rst=0,x=0;
  logic y;
  
  mealy dut(.*);
  
  always #5 clk=~clk;
  
  initial begin
    repeat(5) @(posedge clk) {rst,x}= 2'b10;
    repeat(5) @(posedge clk) {rst,x}= 2'b01;
    repeat(5) @(posedge clk) {rst,x}= 2'b10;
    repeat(5) @(posedge clk) {rst,x}= 2'b01;
    repeat(5) @(posedge clk) {rst,x}= 2'b00;
  end
  
  covergroup cg @(posedge clk);
    option.per_instance=1;
    coverpoint rst {
      bins rst_low= {0};
      bins rst_high= {1};
    }
    coverpoint x {
      bins hig_x={1};
    }
    coverpoint y {
      bins low_y= {0};
      bins hig_y= {1};
    }
    coverpoint dut.ps {
      bins s0_s1= (dut.s0=>dut.s1);
      bins s1_s0= (dut.s1=>dut.s0);
    }
    cross x,dut.ps;
  endgroup
  
  covergroup cg1 @(posedge clk);
    option.per_instance=1;
    coverpoint x {
      bins low_x={0};
    }
    coverpoint dut.ps {
      bins s0_s0= (dut.s0=>dut.s0);
      bins s1_s1= (dut.s1=>dut.s1);
    }
    cross x,dut.ps;
  endgroup
  
  cg cg_h;
  cg1 cg_h1;
  
  initial begin
    cg_h= new();
    cg_h1= new();
    #1000 $stop();
  end

endmodule
    
  
    
    
   
  
      
