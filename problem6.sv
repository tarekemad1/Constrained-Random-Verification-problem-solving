program pr6;
    class pattern;
        rand bit[7:0] num1; 
        rand bit[7:0] num2; 
        constraint value{
            num1!=num2;
            $countones(num1)==5;
            $countones(num2)!=5; 
        }
        function void display;
            $display("value 1 =%0b , # of ones = %0d",num1,$countones(num1));
            $display("value 2 =%0b , # of ones = %0d",num2,$countones(num2));
        endfunction
    endclass
    initial begin
        pattern tr ;
        tr = new(); 
        Randomization: assert (tr.randomize())
            else $error("Assertion Randomization failed!");
        tr.display(); 
    end
endprogram