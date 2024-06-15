program pr4;
    class pattern;
        rand bit[7:0] vlu; 
        constraint vlu_range{
            vlu inside {[10:30]};
        }
        constraint values{
            vlu%2 ==1 ; 
        }
        function void display;
            $display(vlu);
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr =new(); 
        repeat(5) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            tr.display(); 
        end 
    end
    
endprogram