/*Declare a dynamic array of integers. Assign values {10, 20, 30, 40, 50} to it using the new operator. 
Display all elements using a foreach loop. */


module tb;
  int dyn_arr[];
  initial begin
    dyn_arr = new[5];
    dyn_arr = '{10,20,30,40,50};
    foreach(dyn_arr[i])
      $display("dyn_arr[i] = %d",i,dyn_arr[i]);
  end
endmodule
