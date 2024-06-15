program pr3;
    class pattern;
        rand bit [7:0] vlu;
        constraint values {
            vlu%5 =='0;
        }
        function void display;
            $display(vlu);
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new (); 
        repeat (7) begin  
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            tr.display(); 
        end 
    end 
endprogram