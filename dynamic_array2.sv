/*Problem 2: Size Method 
Create a dynamic array of strings. Add five fruit names to it. Print the size of the array before and 
after adding elements using the size() method. */
module tb;
  string fruits[];
  initial begin
    $display("size before adding = %d",fruits.size());
    
    fruits = new[5];
    fruits = '{"apple","orange","banana","graphes","egg"};
    $display("size after adding = %d",fruits.size());
    foreach(fruits[i])
      $display(fruits[i]);
  end
endmodule
