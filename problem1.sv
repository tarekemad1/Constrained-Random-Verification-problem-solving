//0102030405
program pr1;

    class pattern;
        rand int arr[];
        constraint arr_size{
            arr.size() ==10 ; 
        }
        constraint arr_values{
            foreach (arr[i]) {
                i%2 ==0 ->    arr[i]  == 0 ;
                i%2 ==1 ->    arr[i]  == (i+1)/2;
            }
        }
        function void display;
            foreach (arr[i]) begin
                $display(arr[i]);
            end
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new (); 
        Randomization: assert (tr.randomize())
            else $error("Assertion Randomization failed!");
        tr.display();
    end 
    
endprogram