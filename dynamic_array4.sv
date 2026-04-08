/*Create a dynamic array of integers with 5 elements. Resize it to 10 elements using new[]. Verify 
that original elements are preserved and new elements are initialized to zero.*/
module tb;
  int arr[];
  initial begin
    arr = new[5];
    foreach(arr[i])
      arr[i] = (i+1)*10;
    arr = new[10] (arr);
    foreach(arr[i])
      $display("arr[%d] = %d",i,arr[i]);
  end
endmodule
