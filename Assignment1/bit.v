 module bit(
    input wire[5:0] x,y,
    input wire [2:0] fxn,
    output reg overflow,
    output reg c_out1,
    output reg[5:0] overallsum
    );
    // declaring different varibales for each set of instantiations - hence why ther is so many!
     wire[5:0] k,t,l,o;
     wire[5:0] sum, sum1,sum2,sum3;
     wire overflow2,overflow3,overflow4,overflow5, sum10;
     wire[5:0] c_out, c_out2, c_out3, c_out4;
     wire e1,e2,e3,e5,e6,e7;

     orfunction eq_bit40_unit (.eq(k[0]), .i0(1'b1), .i1(y[0])); //just doing the logic for k=y^sel and for each bit 
     orfunction eq_bit41_unit (.eq(k[1]), .i0(1'b1), .i1(y[1]));
     orfunction eq_bit42_unit (.eq(k[2]), .i0(1'b1), .i1(y[2]));
     orfunction eq_bit43_unit (.eq(k[3]), .i0(1'b1), .i1(y[3]));
     orfunction eq_bit44_unit (.eq(k[4]), .i0(1'b1), .i1(y[4]));
     orfunction eq_bit45_unit (.eq(k[5]), .i0(1'b1), .i1(y[5]));
     
     orfunction eq_bit46_unit (.eq(t[0]), .i0(x[0]), .i1(1'b1)); //then t = x^sel for each bit
     orfunction eq_bit47_unit (.eq(t[1]), .i0(x[1]), .i1(1'b1));
     orfunction eq_bit48_unit (.eq(t[2]), .i0(x[2]), .i1(1'b1));
     orfunction eq_bit49_unit (.eq(t[3]), .i0(x[3]), .i1(1'b1));
     orfunction eq_bit50_unit (.eq(t[4]), .i0(x[4]), .i1(1'b1));
     orfunction eq_bit51_unit (.eq(t[5]), .i0(x[5]), .i1(1'b1));
     

     
      
                     
    // this is used to get - so im doing 0-a (using the adder to do this  
    
    // also from here [5:0] l  is storing the value of overflow
    //.a =(input0)
    //.b=(input1)
    //.s=(sum for each bit)
    //.cin= (carryout from previous calculation)
    //.cout (carryout)   
    //i0 and i1 bits to ^ togthered          
    FullAdder fa_bit0_unit(.a(1'b0), .b(t[0]), .s(sum[0]), .cin(1'b1), .cout(c_out[0]));
    FullAdder fa_bit1_unit(.a(1'b0), .b(t[1]), .s(sum[1]), .cin(c_out[0]), .cout(c_out[1]));
    FullAdder fa_bit2_unit(.a(1'b0), .b(t[2]), .s(sum[2]), .cin(c_out[1]), .cout(c_out[2]));
    FullAdder fa_bit3_unit(.a(1'b0), .b(t[3]), .s(sum[3]), .cin(c_out[2]), .cout(c_out[3]));
    FullAdder fa_bit4_unit(.a(1'b0), .b(t[4]), .s(sum[4]), .cin(c_out[3]), .cout(c_out[4]));
    FullAdder fa_bit5_unit(.a(1'b0), .b(t[5]), .s(sum[5]), .cin(c_out[4]), .cout(c_out[5]));                 
    orfunction eq_bit70_unit (.eq(l[0]), .i0(c_out[4]), .i1(c_out[5]));    
    


                     
 // this is used to get - so im doing 0-b    (using the adder again)    
   // also from here [5:0] l  is storing the value of overflow
    //.a =(input0)
    //.b=(input1)
    //.s=(sum for each bit)
    //.cin= (carryout from previous calculation)
    //.cout (carryout)   
    //i0 and i1 bits to ^ togthered          
    FullAdder fa_bit6_unit(.a(1'b0),  .b(k[0]), .s(sum1[0]), .cin(1'b1), .cout(c_out2[0]));
    FullAdder fa_bit7_unit(.a(1'b0),  .b(k[1]), .s(sum1[1]), .cin(c_out2[0]), .cout(c_out2[1]));
    FullAdder fa_bit8_unit(.a(1'b0),  .b(k[2]), .s(sum1[2]), .cin(c_out2[1]), .cout(c_out2[2]));
    FullAdder fa_bit9_unit(.a(1'b0),  .b(k[3]), .s(sum1[3]), .cin(c_out2[2]), .cout(c_out2[3]));
    FullAdder fa_bit10_unit(.a(1'b0), .b(k[4]), .s(sum1[4]), .cin(c_out2[3]), .cout(c_out2[4]));
    FullAdder fa_bit11_unit(.a(1'b0), .b(k[5]), .s(sum1[5]), .cin(c_out2[4]), .cout(c_out2[5])); 
    orfunction eq_bit71_unit (.eq(l[1]), .i0(c_out2[4]), .i1(c_out2[5]));                
                                                                                          
         
                     
// now in here we need to put a>=b code
// first of all getting the equal to values
// then get greater than values
// now putting them all together in bitg

   equalto eq_bit1_unit (.eq(e1), .i0(x[5:4]), .i1(y[5:4]));
   equalto eq_bit2_unit (.i0(x[3:2]), .i1(y[3:2]), .eq(e2));
   equalto eq_bit3_unit (.eq(e3), .i0(x[1:0]), .i1(y[1:0]));
   gr eq_bit5_unit (.eq(e5), .i0(x[5:4]), .i1(y[5:4]));
   gr eq_bit6_unit (.i0(x[3:2]), .i1(y[3:2]), .eq(e6));
   gr eq_bit7_unit (.eq(e7), .i0(x[1:0]), .i1(y[1:0]));
   bitg eq_bit99_unit (.abcd(sum10), .a(e5), .b(e1), .c(e6), .d(e2), .e(e7), .f(e3));
   

 

//Bitwise exclsuive or gate
// as described on lectures we didnt need to write another file for this but i thought it would be easy to
// eq(output)
//i0 and i1 are the values being ^ together
     orfunction eq_bit52_unit (.eq(o[0]), .i0(x[0]), .i1(y[0]));
     orfunction eq_bit53_unit (.eq(o[1]), .i0(x[1]), .i1(y[1]));        
     orfunction eq_bit54_unit (.eq(o[2]), .i0(x[2]), .i1(y[2]));        
     orfunction eq_bit55_unit (.eq(o[3]), .i0(x[3]), .i1(y[3]));        
     orfunction eq_bit56_unit (.eq(o[4]), .i0(x[4]), .i1(y[4]));        
     orfunction eq_bit57_unit (.eq(o[5]), .i0(x[5]), .i1(y[5])); 
     
                                          
                      
//now time for a+b using the adder
    //.a =(input0)
    //.b=(input1)
    //.s=(sum for each bit)
    //.cin= (carryout from previous calculation)
    //.cout (carryout)   
    //i0 and i1 bits to ^ togthered  
     FullAdder fa_bit12_unit(.a(x[0]), .b(y[0]), .s(sum2[0]), .cin(1'b0), .cout(c_out3[0]));
     FullAdder fa_bit13_unit(.a(x[1]), .b(y[1]), .s(sum2[1]), .cin(c_out3[0]), .cout(c_out3[1]));
     FullAdder fa_bit14_unit(.a(x[2]), .b(y[2]), .s(sum2[2]), .cin(c_out3[1]), .cout(c_out3[2]));
     FullAdder fa_bit15_unit(.a(x[3]), .b(y[3]), .s(sum2[3]), .cin(c_out3[2]), .cout(c_out3[3]));
     FullAdder fa_bit16_unit(.a(x[4]), .b(y[4]), .s(sum2[4]), .cin(c_out3[3]), .cout(c_out3[4]));
     FullAdder fa_bit17_unit(.a(x[5]), .b(y[5]), .s(sum2[5]), .cin(c_out3[4]), .cout(c_out3[5]));
     orfunction eq_bit73_unit (.eq(l[4]), .i0(c_out3[4]), .i1(c_out3[5]));
                                                       
       
              
    // now a-b again using the adder 
       // also from here [5:0] l  is storing the value of overflow
    //.a =(input0)
    //.b=(input1)
    //.s=(sum for each bit)
    //.cin= (carryout from previous calculation)
    //.cout (carryout)   
    //i0 and i1 bits to ^ togthered        
    FullAdder fa_bit18_unit(.a(x[0]), .b(k[0]), .s(sum3[0]), .cin(1'b1), .cout(c_out4[0]));
    FullAdder fa_bit19_unit(.a(x[1]), .b(k[1]), .s(sum3[1]), .cin(c_out4[0]), .cout(c_out4[1]));
    FullAdder fa_bit20_unit(.a(x[2]), .b(k[2]), .s(sum3[2]), .cin(c_out4[1]), .cout(c_out4[2]));
    FullAdder fa_bit21_unit(.a(x[3]), .b(k[3]), .s(sum3[3]), .cin(c_out4[2]), .cout(c_out4[3]));
    FullAdder fa_bit22_unit(.a(x[4]), .b(k[4]), .s(sum3[4]), .cin(c_out4[3]), .cout(c_out4[4]));
    FullAdder fa_bit23_unit(.a(x[5]), .b(k[5]), .s(sum3[5]), .cin(c_out4[4]), .cout(c_out4[5]));
    orfunction eq_bit74_unit (.eq(l[5]), .i0(c_out4[4]), .i1(c_out4[5]));
                                                      
      
    // in this always block it just if loops depending on the value of fxn - then it will output the correct value
      always @*
                          if (fxn == 3'b000 )begin
                           overallsum<= x;  
                           overflow <= 1'b0;
                           c_out1<=1'b0;                   
                          end
                          
                          else if (fxn == 3'b001 )begin
                              overallsum<= y;   
                              overflow <= 1'b0;
                              c_out1<=1'b0;                  
                           end
                           
                           else if (fxn == 3'b010 )begin
                                  overallsum<=sum; 
                                  overflow<=l[0];
                                  c_out1<=c_out[5];                
                                 end
                            

                          else if (fxn == 3'b011 )begin
                            overallsum<=sum1; 
                            overflow <= l[1];
                            c_out1<=c_out[5];                
                           end 
                               
                            // the next 3 else if are the only complicated ones as they are the equal to and greater than
                            // in these statements im looking at the MSB because we have to factor in that we want it in 2s complent form but vivado reads in as a 6 bit number
                          else if ((fxn == 3'b100 && x[5]== 1'b0 && y[5]==1'b0) || (fxn == 3'b100 && x[5]== 1'b1 && y[5]==1'b1) )begin
                            overallsum <= (e5) | (e1&&e6) | (e2&&e7) ||  (e1&&e2&&e3);   
                            overflow <= 1'b0;
                            c_out1<=1'b0;               
                           end
                           
                   
                           else  if (fxn == 3'b100 && x[5]== 1'b1 && y[5]==1'b0 )begin
                             overallsum<= 6'b000000 ;  
                             overflow <= 1'b0;
                              c_out1<=1'b0;               
                              end
                  
                             else if (fxn == 3'b100 && x[5]== 1'b0 && y[5]==1'b1 )begin
                                overallsum <= 6'b000001 ;
                                 overflow <= 1'b0;
                                 c_out1<=1'b0;               
                                end
                            
                           else if (fxn == 3'b101 )begin
                            overallsum<=o;                           
                            overflow <= 1'b0;                
                            c_out1<=1'b0;       
                             end  
                             
                           else if (fxn == 3'b110 )begin
                              overallsum<=sum2;
                              overflow <= l[4];
                              c_out1<=c_out3[5];          
                             end   
                             
                           else if (fxn == 3'b111 )begin
                              overallsum<=sum3;
                              overflow <= l[5];
                              c_out1<=c_out4[5];
                              
                                 end
        
              
                   
           // will now pass the correct output values to the test bench.
        

   
     
endmodule