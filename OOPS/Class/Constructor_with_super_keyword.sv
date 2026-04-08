class parent;
  string name;
  function new(string n="dhanu");
    name=n;
  endfunction
endclass
class child extends parent;
  int age;
  int mark;
  function new(int a,int m);
    super.new();
    age =a;
    mark=m;
  endfunction
  function void display();
    $display("name=%s age=%0d mark=%0d",name,age,mark);
  endfunction
endclass

module tb;
  child c1,c2;
  initial begin
    c1=new(23,95);
    c1.display();
    c2=new(24,97);
    c2.name="lavi";
    c2.display();
    c1.name="abarna";
    c1.display();
  end
endmodule
//Output
name=dhanu age=23 mark=95
name=lavi age=24 mark=97
name=abarna age=23 mark=95
