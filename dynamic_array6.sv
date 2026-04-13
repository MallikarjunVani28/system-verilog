/*Problem 6: Push and Pop Simulation 
Simulate a stack using a dynamic array of integers. Write code to push five elements onto the stack 
and pop them one by one, printing each popped element.*/
module tb;
  int stack[];
  int top = 0;
  task push(int val);
  stack = new[top+1](stack);
    stack[top] = val;
  top++;
  endtask
  
  task pop(output int val);
    if(top == 0)begin
      $display("stack underflow?");
    end
    else begin
      val = stack[top-1];
      stack = new[top-1](stack);
      top--;
    end
  endtask
  
  int data;
  initial begin
    push(11);
    push(22);
    push(33);
    push(44);
    push(55);
    $display("popping elements");
    repeat(5)begin
      pop(data);
      $display("%0d",data);
    end
  end
endmodule

  
