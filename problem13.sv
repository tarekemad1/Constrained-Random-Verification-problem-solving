program pr13;
    class pattern;
         rand bit[7:0] val; 
         constraint values{
            val dist {[0:100]:/70 ,
                                    [101:255]:/30} ;
         }
         function void post_randomize;
            if(val>= 0 && val <= 100)
                $display("%d : in range 70 percentage" ,val);
            else if (val>=101 && val <=255 ) 
                $display("%d : in range 30 percentage ",val);
         endfunction
    endclass
    initial begin 
        pattern tr  ; 
        tr = new (); 
        repeat(10) begin 
            Randomization : assert (tr.randomize())
                else $error("Assertion Randomization  failed!");
        end 
    end 
endprogram