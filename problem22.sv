program pr22;
    class pattern;
        rand bit[31:0] val; 
        rand bit[4:0] shift; 
        constraint value{
            val ==1<<shift;
        }
    endclass
    initial begin 
        pattern tr ; 
        tr = new();
        repeat(10) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("Binary =%0b   Decimal = %0d",tr.val,tr.val);
        end
    end 
endprogram