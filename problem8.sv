//Constraint to generate 0,1,x and z randomly
program pr8;
    class pattern;
        rand bit choose_bit ;
        typedef enum  { S0,S1,S2,S3 } status;
        rand status ss;
        logic value;
        constraint status_{
        choose_bit==0 -> { ss inside{[S0:S1]}; } 
        choose_bit==1 -> { ss inside{[S2:S3]}; }
        }
        function void post_randomize();
            case (ss)
                S0 : value ='0;
                S1 : value ='1;
                S2 : value ='x;
                default: begin
                    value ='z;
                end
            endcase
        endfunction
        function void  display;
            $display(value);
        endfunction
    endclass
    initial begin 
        pattern tr ;
        tr = new();
        repeat (10) begin 
            assert(tr.randomize());
            tr.display();
        end 
    end 
endprogram