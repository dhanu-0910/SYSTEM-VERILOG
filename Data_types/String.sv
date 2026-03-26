 module string_tb;
   string s="Dhanushiya";
   initial begin
     string t; 
     t="Lavanya";
     $display("len=%0d",s.len());
     t.putc (2,"n");
     $display("putc=%s",t);
     $display("s_compare_t=%0d",s.compare(t));
     t="Dhanushiya";
     $display("s_compare_t=%0d",s.compare(t));
     t="Dhanush";
     $display("s_compare_t=%0d",s.compare(t));
     t="Dhanushiyaa";
     $display("s_compare_t=%0d",s.compare(t));
     $display("getc=%s(%0d)",s.getc(0),s.getc(0));
     t="Lavanya";
     $display("Name=%s",{s," ",t});
     $display("Name=%s",{3{s}});
     t="dhanushiya";
     $display("s_compare_t=%0d",s.icompare(t));
     
   end
 endmodule
