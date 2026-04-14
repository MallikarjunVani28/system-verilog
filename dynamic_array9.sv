/*Problem 9: Find Minimum 
Declare a dynamic array of 10 random integers between 0 and 100. Write a function that returns the 
minimum value in the array. */

module tb;
  int arr[];
  function int find_min(input int a[]);
    int min;
    min = a[0];
    foreach(a[i])begin
      if(a[i]<min)
        min = a[i];
    end
    return min;
  endfunction
  
  initial begin
    arr = new [10];
    foreach(arr[i])begin
      arr[i] = $urandom_range(0,100);
      $display("arr[%d] = %d",i,arr[i]);
    end
    $display("minmum_num = %0d",find_min(arr));
  end
endmodule
               
