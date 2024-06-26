program pr19;
    class pattern ;
        rand bit[7:0] low,mid,high;
        constraint values{
            low<mid ;
            mid<high ;
        }
    endclass
    initial begin 
        pattern tr ; 
        tr = new();
        repeat(10) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("LOW =%0d    MID=%0d   HIGH = %0d",tr.low,tr.mid,tr.high);
        end 

    end
    
endprogram