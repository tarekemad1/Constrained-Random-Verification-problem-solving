program pr21;
    class pattern;
        rand bit[7:0] val; 
        constraint BITS{
            $countones(val)==5;
        }
        
    endclass
            initial begin 
            pattern tr ; 
            tr = new(); 
            repeat(9) begin 
                Randomization: assert (tr.randomize())
                    else $error("Assertion Randomization failed!");
                $display("%0b",tr.val);
            end 
        end 
    
endprogram