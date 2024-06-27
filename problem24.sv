program pr24;
    class pattern;
        rand bit[7:0] var1;
        rand bit[7:0] var2;
        constraint values {
            var1 <=50; 
            unique(var2);
        }
        
    endclass
    initial begin
        pattern tr ;
        tr = new(); 
        repeat(8) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("var1 = %0d    var2 = %0d",tr.var1,tr.var2);
        end 
    end 
endprogram