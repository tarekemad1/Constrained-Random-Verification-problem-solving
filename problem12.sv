
program pr12;
    class pattern ; 
        rand int unsigned arr[];
        constraint arr_size {arr.size() inside{[5:10]};}
        constraint arr_values{
            foreach (arr[i]) {
                if(i<arr.size()-1)
                    arr[i]>arr[i+1];   
            }
        }
        function void display;
            $display("array size = %0d",arr.size());
            foreach (arr[i]) begin
                $display("index %0d Value %0d",i,arr[i]);
            end 
        endfunction
    endclass
    initial begin 
        pattern tr  ;
        tr= new(); 
        Randomization: assert (tr.randomize())
            else $error("Assertion Randomization failed!");
        tr.display();
        end 

    
endprogram