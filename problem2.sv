program pr2;
    class pattern;
        randc int val; 
        real rslt; 
        constraint values{
            val inside {[990:1000]};
        }
        function void post_randomize;
            rslt = val /10.0;
        endfunction
        function void display;
            $display(rslt);
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        repeat(7) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            tr.display(); 
        end 
    end 
    
endprogram