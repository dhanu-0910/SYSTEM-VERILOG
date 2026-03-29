module tb;
  string d[$]={"dhanu","lavi","sowmi","tamizh"};
  initial begin
    foreach(d[i]) begin
      $display("Names=%s",d[i]);
    end
    $display("Array=%p",d);
    $display("Array=%p",d[1:2]);
    $display("Array=%p",d[$:3]);
    d[$+1]="thiri";
    $display("Array=%p",d);
    d[0]="sham";
    $display("Array=%p",d);
    d=d[1:$];
    $display("Array=%p",d);
    d=d[0:$-1];
    $display("Array=%p",d);
    d.insert(0,"dhanu"); 
    $display("Array=%p",d);
    d.delete(2);
    $display("Array=%p",d);
    $display("Array=%s",d.pop_front());
    $display("Array=%s",d.pop_back());
    $display("Array=%p",d);
    d.push_front("dhanu");
    $display("Array=%p",d);
    d.push_back("tamizh");
    $display("Array=%p",d);
    $display("Array=%p",d.size());    
    d={};
    $display("Array=%p",d);
  end
endmodule
