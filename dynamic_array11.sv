/*Problem 11: Search Element 
Declare a dynamic array of integers. Populate it with values {3,7,1,9,4,6}. Write a task that searches 
for a given value and prints its index, or 'Not Found' if absent*/
module tb;
  int arr[];
  task search_element(input int a[],int key);
    int found = 0;
    foreach(a[i])begin
      if(a[i] == key)begin
        $display("element %0d found at index%0d",key,i);
      end
    end
    if(!found)
      $display("lement %0d not found",key);
  endtask
  initial begin
    arr = new[6];
    arr = '{3,7,1,9,4,6};
    foreach(arr[i])
      $display("arr[%0d] = %0d",i,arr[i]);
    search_element (arr,9);
    search_element (arr,10);
  end
endmodule
