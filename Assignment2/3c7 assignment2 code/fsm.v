module fsm ( 
input wire clk, reset, 
input wire  level,
output wire [2:0] state, 
output wire out
 );
// symbolic state declaration
//different states 
localparam [2:0] 
zero = 3'b000, 
one = 3'b001, 
one1 = 3'b010,
one11 = 3'b011,
one110=3'b100;
// signal declaration     
reg [2:0] state_reg, state_next;
reg out_reg, out_next;
 
always @(posedge clk, posedge reset)
 if (reset)begin //intialising the state and the flag if code word found
     state_reg <= zero; 
     out_reg <=1'b0;  
     end
 else 
    begin
    state_reg <= state_next; //storing values into +reg
    out_reg <=out_next;  
    end
 // next-state logic and output logic 
 always @* // this always blocks contains the mealy FSM
  begin 
  case (state_reg) 
     
     zero:begin
            if(level==1)begin       //if level==1 then set state to 1 and flag to zero
               state_next = one;
               out_next=1'b0;
               end 
            else 
            begin
                state_next = zero;
                 out_next=1'b0;        //if level==0 then set state to 0 and flag to 0
                end 
         
         end 
             
     one: begin
             if (level==1)begin  //if level==1 then set state to 2 and flag to zero
                state_next = one1; 
                out_next=1'b0;
                end
             else begin
                state_next = zero; //if level==0 then set state to 0 and flag to 0
                 out_next=1'b0; 
                end
        end 
      
      one1:begin 
        if (level==1)begin   //if level==1 then set state to 3 and flag to zero
            state_next = one11;
            out_next=1'b0; 
            end
        else begin
            state_next = zero;//if level==0 then set state to 0 and flag to 0
            out_next=1'b0;
            end
        end    
            
       one11:begin 
            if (level==0)begin //if level==0 then set state to 0 and flag to 1
                state_next = zero;
                out_next=1'b1;
            end  
            else begin
                state_next = one11; //if level==1 then set state to 3 and flag to 0
                out_next=1'b0;
                end
            end
            
            
            endcase
            
           
    end
           assign state = state_reg; //outputing the value of state for testing purposes
           assign out= out_reg; //outputting the value flag which will be passed to count
endmodule