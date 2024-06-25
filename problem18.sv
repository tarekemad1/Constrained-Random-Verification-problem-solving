program pr18;
    class pattern;
        rand bit[7:0] arr[10];
        constraint values{
            foreach (arr[i]) {
                   arr[i] == i*2;
            }
        }
        function void post_randomize;
            arr.shuffle();
        endfunction
        function void display;
            $display("Elements generated:");
            foreach (arr[i]) begin
                $display("val:-%0d = %0d",i,arr[i]);
            end
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        Randomize: assert (tr.randomize())
            else $error("Assertion Randomize failed!");
        tr.display(); 
   end
    
endprogram