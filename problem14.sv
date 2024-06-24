program pr14;
    class pattern;
        rand int unsigned val ; 
        constraint values {
            val>=34 ;
            val<=43 ; 
        }
        function void post_randomize;
            $display("%d inside the range of [34 : 43 ]",val);
        endfunction
        
    endclass
    initial begin 
        pattern tr ; 
        tr = new (); 
        repeat(10) begin 
        Randomization : assert (tr.randomize())
            else $error("Assertion Randomization  failed!");
        end 
    end 
endprogram