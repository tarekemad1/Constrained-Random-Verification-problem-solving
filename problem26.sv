program pr26;
    class pattern;
         rand bit[15:0] val; 
         rand bit[3:0] shift ; 
         constraint values{
            val  == 1<<shift;
            unique{shift};
            val !='0;
         }
         function void post_randomize;
            $display("decimal = %d   binary = %0b",val,val);
         endfunction
    endclass
    initial begin 
        pattern tr ;
        tr = new(); 
        repeat(7) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
         end
    end 
    
endprogram