

module highh(
 input wire clock, reset1,
 output wire LD0,
 output wire [10:0] out,
 output wire [3:0] an,// an is each of the 4leds
 output wire [7:0] sseg,// 7 segemts plus the decimal poin5
 //output wire  outsum, outsum1,
 //output wire onebitout,
 output wire total
 //output wire level
    );
    
    wire [3:0] totaltimes1;
    wire [3:0] totaltimes;
    wire [3:0] tt;
    wire [3:0] q,q1,q2,q3;
    wire level;
    wire onebitout;
    wire reached;
   
    
    wire[2:0] state;
    clock M0 (.CCLK(clock), .clkscale(50000000), .clk(LD0)); //CHANGING THE RATE OF THE CLOCK
    lfsr1 uut ( .clk(LD0), .reset(reset1), .out(out), .onebitout(onebitout), .max_tick(reached)); //COMPUTING THE LFSR
    // THE ONEBITOUT IS THE output STREAM coming from lfsr 
    fsm uut1 (.clk(LD0), .level(onebitout), .out(totaltimes), .reset(reset1));//fsm module which output a glag
    count uut2 (.clk(LD0), .reset(reset1), .count(totaltimes), .q(q), .q1(q1), .q2(q2), .q3(q3), .reset2(reached));
   //count will output the correct number and send it to display
    assign total=totaltimes[0];
    
 
     
    
    
    disp_hex_mux disp_unit(.clk(clock), .reset(1'b0),  .hex0(q),  .hex1(q1), .hex2(q2), .hex3(q3), .dp_in(4'b1111), .an(an), .sseg(sseg));
    // will display number on 7 seg dsiplay.
endmodule
