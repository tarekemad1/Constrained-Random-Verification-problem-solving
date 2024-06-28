program pr25;
    class pattern;
        rand bit [7:0] arr[];
        constraint arr_size{arr.size()==10;}
        constraint arr_values{
            foreach (arr[i]) {
                    arr[i]<=200;
                    arr[i]%2!=0;
                    arr[i]%3!=0;
                    arr[i]%5!=0;
                    //arr[i]%7!=0;
                    arr[i]%10==7;
                    unique{arr[i]};
            }
        }
        function void display;
            foreach (arr[i]) begin
                $display("arr[%0d] = %0d (Prime and seven-involved)",i,arr[i]);
            end
        endfunction 
    endclass
    initial begin
            pattern tr; 
            tr = new();
            Randomizataion: assert (tr.randomize())
                else $error("Assertion Randomizataion failed!");
            tr.display();
        end
    
endprogram