/*Problem 8: Find Maximum 
Declare a dynamic array of 10 random integers between 0 and 100. Write a function that returns the 
maximum value in the array.*/
// Code your testbench here
// or browse Examples
module tb;
  int arr[];
  function int find_max(input int a[]);
    int max;
    max = a[0];
    foreach(a[i])begin
      if(a[i]>max)
        max = a[i];
    end
    return max;
  endfunction
  initial begin
    arr = new[10];
    foreach(arr[i])begin
      arr[i] = $urandom_range(0,100);
      $display("arr[%d] = %d",i,arr[i]);
    end
    $display("max_value = %d",find_max(arr));
  end
endmodule
