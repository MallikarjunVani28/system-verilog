/*Declare a dynamic array of logic [7:0] with 8 elements initialized to 0. Delete the entire array using 
the delete() method and verify the size becomes zero.*/
module tb;
  logic [7:0] dyn_arr[];
  initial begin
    dyn_arr = new[8];
    foreach(dyn_arr[i])
      dyn_arr[i]=8'h00;
    $display("dyn_arr size before deletion %d",dyn_arr.size);
    dyn_arr.delete();
    $display("dyn_arr size after deletion %d",dyn_arr.size);
  end
endmodule
