interface and_if;
  
  logic a;
  logic b;
  logic y;
  
  modport dut (input a,input b,output y);
  modport tb (input y,output a,output b);
  
endinterface
