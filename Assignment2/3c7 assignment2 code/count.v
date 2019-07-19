module count(
input wire clk,reset,reset2, //reset2 is when it has cycled through 2^n-1 times
input wire count,
output wire [3:0] q,q1,q2,q3

    );

   reg [3:0] r_reg3,r_reg2,r_reg1,r_reg;
   reg [3:0] r_next3,r_next2,r_next1,r_next; 
// body
// register
always @(posedge clk, posedge reset, posedge reset2) 
    if (reset || reset2)begin //reseting all values to zero
    r_reg3 <= 0;
    r_reg2 <= 0;
    r_reg1 <= 0;
    r_reg<= 0; // 
    end
    else begin
    r_reg3 <= r_next3;
    r_reg2 <= r_next2;
    r_reg1 <= r_next1;
    r_reg <= r_next; 
    end
// next-state logic 
always @*
    begin 
      r_next =  r_reg;
      r_next1 = r_reg1;
      r_next2 = r_reg2;
      r_next3 = r_reg3;
      
      
        if(reset)
            begin
            r_next3=4'b0;
            r_next2=4'b0;
            r_next1=4'b0;
            r_next=4'b0;
            end
     //this section we adding 1 and making sure thats in base 10 e.g cant get bigger than 9999       
     else if(count==1)begin
          if (r_reg != 9) // this loop is adding 1 to the units
             r_next = r_reg + 1;
          else              // reach XXX9
            begin
             r_next = 4'b0; // since reach XXX9 reset d0=0 so we now get XXX0
               if (r_reg1 != 9)// this loop is adding 1 to the 10s
                   r_next1 = r_reg1 + 1;
               else       // reach XX9X
               begin
                    r_next1 = 4'b0;  // since reach XX9X reset d1=0 so we now get XX0X
                    if (r_reg2 != 9) // this loop is adding 1 to the 100's 
                          r_next2 = r_reg2 + 1;
                    else  // reach X9XX
                    begin
                          r_next2 = 4'b0; // since reach X9XX reset d2=0 so we now get X0XX
                          if (r_reg3 != 9 ) // this loop is adding 1 to the 1000s 
                               r_next3 = r_reg3 + 1;
                          else  // reach 9XXX
                              r_next3=4'b0; // since reach 9XXX reset d3=0 so we now get 0XXX
                    end
                end
            end
        end
    end    
       

// output logic for each of the 7 segment displays.
assign q = r_reg;
assign q1 = r_reg1;
assign q2 = r_reg2;
assign q3 = r_reg3;


    
    
   
    
    
    
endmodule
