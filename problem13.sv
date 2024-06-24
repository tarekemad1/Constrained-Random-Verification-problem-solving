program pr13;
    class pattern;
         rand bit[7:0] val; 
         constraint values{
            val dist {[0:100]:/70 ,
                                    [101:255]:/30} ;
         }
    endclass
    initial begin 
        pattern tr  ; 
        tr = new (); 
        repeat(10) begin 
            Randomization : assert (tr.randomize())
                else $error("Assertion Randomization  failed!");
            $display("%d",tr.val);
        end 
    end 
endprogram