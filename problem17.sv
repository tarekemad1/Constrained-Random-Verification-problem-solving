program pr17;
    class pattern;
        rand bit[7:0] val; 
        constraint values{
            val inside{[1:34],127,[129:156],[192:202],[257:260]};
        }
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        repeat(10) begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            $display("The generated value is %0d",tr.val);
        end
    end
endprogram