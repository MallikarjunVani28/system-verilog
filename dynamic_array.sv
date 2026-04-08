/*Problem 5: Copy Dynamic Array 
Declare two dynamic arrays of integers. Initialize the first with values {1,2,3,4,5}. Copy the first into 
the second using assignment. Modify the second and show both arrays are independent.*/

module tb;
  int a[];
  int b[];
  initial begin
    
    a = new[5];
    a = '{1,2,3,4,5};
    b = new[a.size()] (a);
    b[0] = 99;
    $display("a[0] = %0d b[0]=%0d",a[0],b[0]);
    foreach(a[i])
      $display("a[%0d]=%0d",i,a[i]);
    foreach(b[i])
      $display("b[%0d]=%0d",i,b[i]);
  end
  
    
endmodule

    
