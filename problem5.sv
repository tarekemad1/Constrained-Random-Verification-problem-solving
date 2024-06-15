program pr5;
    class pattern;
        rand bit[3:0] arr[]; 
        constraint arr_size{
            arr.size() inside {[15:20]};
        }
        constraint arr_values{
            foreach (arr[i]) {
                i%2 ==1 -> arr[i]%2 == 0 ;
                i%2 ==0 -> arr[i]%2 == 1  ;
            }
        }
        function void display;
            $display("size of generated array =%0d",arr.size());
            foreach (arr[i]) begin
                $display("value[%0d]=%0d",i,arr[i]);
            end
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr  = new(); 
        Randomization: assert (tr.randomize())
            else $error("Assertion Randomization failed!");
        tr.display();
    end
endprogram