program pr16;
    class pattern;
        rand int unsigned var1, var2, var3, var4 ;
        constraint values{
            var1<1000;
            var2<1000;
            var3<1000;
            var4<1000;
        }
        function void display;
            $display("var1=%0d   var2=%0d    var3=%0d    var4=%0d",var1,var2,var3,var4);
        endfunction
    endclass

    initial begin 
        pattern tr ; 
        tr = new();
        RandomizAll: assert (tr.randomize())
            else $error("Assertion RandomizAll failed!"); 
        $display("Randomize All results :");
        tr.display();
        RandomizeVar2: assert (tr.randomize(var2))
            else $error("Assertion RandomizeVar2 failed!");
        $display("Randomize Var2 only :");
        tr.display();        
        RandomizeVar1Var4: assert (tr.randomize(var1,var4))
            else $error("Assertion RandomizeVar1Var4 failed!");
        $display("Randomize Var1 and Var 4 :");
        tr.display();
        RandomizeVar1Var3Var4: assert (tr.randomize(var1,var3,var4))
            else $error("Assertion RandomizeVar1Var3Var4 failed!");
        $display("Randomize Var1,Var3 and Var 4");
        tr.display();
    end 
endprogram