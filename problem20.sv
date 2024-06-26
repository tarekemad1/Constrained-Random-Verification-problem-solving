program pr20;
    class pattern ;
        rand bit[15:0] myvar;
        constraint BITS{
            foreach (myvar[i]) {
               ( i!=15 & myvar[i]==1) ->    myvar[i+1] == 'b0;
            }
        }
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        repeat (12) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("%0b",tr.myvar);
        end 
    end
    
endprogram