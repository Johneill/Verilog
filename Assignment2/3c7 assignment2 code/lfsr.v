
module lfsr1 ( 
    input wire clk, reset, 
    output wire lfsr_out,
    output wire [10:0] out,
    output wire  max_tick,
    output wire counter,
    output wire onebitout
 );
//signal declaration
   reg [10:0] lfsr_reg;
  // register storage 
   reg [10:0] lfsr_next;
   // next value 
   reg lfsr_tap; // to hold feedback
   reg max_tick_reg,max_tick_next;
   parameter [10:0] seed = 11'b11100000111;
   
// body 
// register 
always @(posedge clk, posedge reset)
    
    if (reset)begin
     lfsr_reg <= seed;
     max_tick_reg<=1'b0;
     end 
// a seed value 
    else if(reset ==1'b0)begin
    lfsr_reg <= lfsr_next;
    max_tick_reg<=max_tick_next;
    
    end
    
// next-state logic 

always @(posedge clk)
 if(lfsr_next==seed)begin // if the next value is equal to the seed then set max tick to high. 
     max_tick_next<=1'b1;
    end     
    
    else if(lfsr_next!=seed)begin
     max_tick_next<=1'b0;
     end


always @* 
begin 
// generate the feedback by XOR of tap 9 and 11 
    lfsr_tap = lfsr_reg[10] ^ lfsr_reg[8]; 
    // feedback goes into 0 position. Other bits shift up 
    lfsr_next = {lfsr_reg[9:0],lfsr_tap }; 
    end // next state logic
    // output logic 
             
    assign  max_tick=  max_tick_reg; //output the value for max tick
    assign out = lfsr_reg; // the output value after one cycle
    assign onebitout= lfsr_reg[10];//this is the outbit stream 
  
   
endmodule