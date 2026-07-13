/*Write constraints to generate elements of a dynamic array (abc as
shown in code below) such that each element of the array is less than 10
and the array size is less than 10.
class dynamic_array;
rand unsigned int abc[];
endclass*/

class dynamic_array;
  rand int unsigned abc[];
  constraint c_size {
    abc.size() < 10;
  }
  constraint c_value {
    foreach (abc[i])
      abc[i] < 10;
  }
endclass

module tb;
  dynamic_array da;
  initial begin
    da = new();
    repeat (5) begin
      assert(da.randomize());
      $display("Array Size = %0d", da.abc.size());
      $write("Array = ");
      foreach (da.abc[i])
        $write("%0d ", da.abc[i]);

      $display("\n");
    end

    $finish;
  end

endmodule
