program pr7;
    class pattern;
        rand bit[3:0] a ; 
        int q [$:6];
        constraint value_a{! (a inside {q}) ;};
        function void post_randomize;
            q.push_front(a); 
            $display("a=%0d",a);
            if (q.size()==6) begin 
                q.pop_back();
                 $display("the five occurances of brevious a %p ",q);
            end 
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new();
            repeat(10)  begin 
            Randomization: assert (tr.randomize())
                else $error("Assertion Randomization failed!");
            end 
    end 
endprogram