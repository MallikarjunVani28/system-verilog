/*Problem 10: Sum of Elements 
Declare a dynamic array of real numbers. Populate it with 6 values. Write a function that computes 
and returns the sum of all elements.*/
module tb;
  real arr[];
  function real find_sum(input real a[]);
    real sum = 0.0;
    foreach(a[i])begin
      sum += a[i];
    end
    return sum;
  endfunction
  initial begin
    arr = new[5];
    arr = '{1.5,1.5,2.5,2.5,1.0};
    $display("sum = %f",find_sum(arr));
             end
                      
endmodule
               
