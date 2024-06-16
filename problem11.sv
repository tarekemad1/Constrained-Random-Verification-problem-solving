/*11. Constraint with array size of 5 to 10 values & the array values 
should be in ascending order.*/
program pr11;
    class pattern;
        rand int unsigned arr[];
        constraint arr_size{
            arr.size() inside {[5:10]};
        }
        constraint arr_values{
            foreach (arr[i]) {
                 if (i<arr.size()-1) 
                    arr[i]<arr[i+1]; 
            }
        }
        function void display();
            $display("array size = %0d",arr.size());
            foreach (arr[i]) begin
                
                $display(arr[i]);
            end
            
        endfunction
        
    endclass
    initial begin 
        pattern tr ;
        tr=  new();
            randomization: assert (tr.randomize())
                else $error("Assertion randomization failed!");
                tr.display();
    end 
endprogram
