`timescale 1ns / 1ps

module testbench;

    
    reg  clock,reset1;
    wire [10:0] out;
    wire totaltimes;
    wire [3:0] q,q1,q2,q3;
    //wire [2:0] state;
    wire onebitout;
    wire reached;
  
  //calling each module
   count uut2 (.clk(clock), .reset(reset1), .count(totaltimes), .q(q), .q1(q1), .q2(q2), .q3(q3));
   fsm uut1 (.clk(clock), .level(onebitout), .out(totaltimes), .reset(reset1));
   lfsr1 uut ( .clk(clock), .reset(reset1), .out(out), .onebitout(onebitout), .max_tick(reached));

always @*
   if(reached==1'b1)begin //if you have cycled through 2^n-1 times then reset.
   #20
    reset1=1'b1;
    #180;
    reset1=1'b0;
    end
    

   initial //setting intial variables
    begin 
        clock = 1'b1;
        reset1=1'b1;
        #200;
        reset1=1'b0; 
      
    end
       

initial  //syn reset
    begin 
        //reset1=1'b1; 
        #100
        reset1=1'b0;
        #100
        reset1=1'b0;
        
        
          
    end
    
   always
    begin
        #10 clock <= ~clock;
    end
    

    
    endmodule
