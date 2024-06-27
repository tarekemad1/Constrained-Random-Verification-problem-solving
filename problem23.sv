program pr23;
    class pattern;
        randc bit [15:0] val; 
        constraint value {$onehot(val);}
    endclass
    initial begin 
        pattern tr; 
        tr = new(); 
        repeat(10) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("Binary =%0b       Decimal = %0d",tr.val,tr.val);
        end
    end
    
endprogram