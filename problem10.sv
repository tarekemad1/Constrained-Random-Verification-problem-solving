
program pr10;
    class pattern;
        rand int value ;
        constraint values {value inside{[25:50]} ;}
        constraint add_const{value>40;}
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        repeat(7) begin 
            assert(tr.randomize());
            $display(tr.value);
        end 
    end 
    
endprogram