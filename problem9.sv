program pr9;
    class pattern;
        rand int arr1[];
        rand bit[3:0] arr2[];
        rand int arr3[];
        constraint arr1_size{arr1.size() inside{[30:40]};
                            arr2.size() == 15;
                            arr3.size() == 30 ; }
        function void display;  
            $display("Size of array 1: %0d",arr1.size());
            $display("elements array 1 {%0p} \n", arr1);
            $display("elements array 2 {%0p} \n", arr2);
            $display("elements array 3 {%0p} \n", arr3);
            $display("Summation of array 2 :%0d",arr2.sum());
            $display("Summation of array 3 :%0d",arr3.sum());
        endfunction
    endclass
    initial begin 
        pattern tr ; 
        tr = new(); 
        repeat(1) begin 
        tr.randomize() with {arr2.sum()<100; arr3.sum()>100;};
        tr.display(); 
        end

    end 
    
endprogram