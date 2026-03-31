typedef struct packed {
  int id;
  int salary;
  int hiked_sal;
}emp;
module tb;
  emp e1,e2,e3;
  initial begin
    e1.id=5;
    e1.salary=30000;
    e1.hiked_sal= e1.salary + (e1.salary/100)*12;
    $display("\nemployee 1 details:\n ID=%0d SALARY=%0d HIKED SALARY=%0d",e1.id,e1.salary,e1.hiked_sal);
    e2.id=5;
    e2.salary=45000;
    e2.hiked_sal= e2.salary + (e2.salary/100)*12;
    $display("\nemployee 2 details:\n ID=%0d SALARY=%0d HIKED SALARY=%0d",e2.id,e2.salary,e2.hiked_sal); 
    e3.id=5;
    e3.salary=50000;
    e3.hiked_sal= e3.salary + (e3.salary/100)*12;
    $display("\nemployee 3 details:\n ID=%0d SALARY=%0d HIKED SALARY=%0d",e3.id,e3.salary,e3.hiked_sal); 
  end
endmodule
