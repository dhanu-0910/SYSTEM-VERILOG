 typedef enum {P0,P1,P2,P3} index;

class data;

  index id;

  rand bit [3:0] a[6];
  rand bit [2:0] b1,b2,b3,b4;
  rand bit [7:0] c[index];

  constraint a_c {
    unique {a};
  }

  constraint b_c {
    unique {b1,b2,b3,b4};
  }

  constraint c_c {
    unique {c};
    foreach(c[i])
      c[i] inside {[20:50]};
  }

endclass

module tb;

  data d;

  initial begin

    d = new();

    repeat (3) begin

      d.randomize();

      $display("b1=%0d b2=%0d b3=%0d b4=%0d",
                d.b1,d.b2,d.b3,d.b4);

      foreach(d.c[i])
        $display("c[%s]=%0d", i.name(), d.c[i]);

      foreach(d.a[i])
        $display("a[%0d]=%0d", i, d.a[i]);

    end

  end

endmodule

//Output
b1=2 b2=5 b3=6 b4=0
a[0]=0
a[1]=9
a[2]=11
a[3]=4
a[4]=10
a[5]=8
b1=5 b2=0 b3=3 b4=4
a[0]=8
a[1]=3
a[2]=0
a[3]=14
a[4]=12
a[5]=5
b1=6 b2=4 b3=5 b4=3
a[0]=5
a[1]=6
a[2]=9
a[3]=14
a[4]=10
a[5]=1
