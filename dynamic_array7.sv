/*Problem 7: Reverse Array Elements 
Create a dynamic array of integers with 8 elements. Write a task that reverses the elements in
place without using a second array. Print the array before and after reversal.*/

module tb;
  int arr[];
  task automatic reverse_array(ref int a[]);
    int i,temp;
    int n;
    n= a.size();
    for(i=0;i<n/2;i=i+1)begin
      temp = a[i];
      a[i] = a[n-1-i];
      a[n-1-i] = temp;
    end
  endtask
  initial begin
    arr = new[8];
    
    foreach(arr[i])begin
      arr[i]=i+1;
    end
    
    foreach(arr[i])begin
      $write("%0d",arr[i]);
    end
    $display("");
    reverse_array(arr);
    
    foreach(arr[i])begin
      $write("%0d",arr[i]);
    end
  end
endmodule
    
