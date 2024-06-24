program pr15;
    class pattern ;
        rand int unsigned arr[]; 
         int unsigned q[$];
        constraint values{
            arr.size()==10 ;

        }
        function void  post_randomize();
            foreach(arr[i]) begin 
                q=arr.unique();
            end
        endfunction
        function void display;
            $display("The generated unique elements are :");
            foreach (q[i]) begin
                $display("%d ",q[i]);
            end
            
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new (); 
        Randomization : assert (tr.randomize())
            else $error("Assertion Randomization  failed!");
        tr.display(); 
    end 
endprogram