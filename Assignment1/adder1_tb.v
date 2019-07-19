//`timescale 1ns / 10ps
module adder1_tb;
   // signal declaration
   reg  [5:0] test_in0, test_in1;
   wire  [5:0]test_out; 
   wire  overflowtb,carryout1;
   reg[2:0] fxn1;

   // instantiate the circuit under tes 
     bit uut1
           (.x(test_in0), .y(test_in1), .overallsum(test_out), .overflow(overflowtb), .fxn(fxn1), .c_out1(carryout1));
           
        

   //  test vector generator
   initial
   begin
   
   $monitor (" %b, %b, %b, %b,%b, %b", test_in0 , test_in1 , fxn1 , test_out, carryout1, overflowtb);
       //test vector 1
//      test_in0 = 6'b000000; // fxn=000 - testing completed all tests were correct 
//      fxn1 = 3'b000;         //making sure that output is same as test_in0
//      test_in1 = 6'b000000;
//      # 200;
      
//      test_in0 = 6'b011100; // 
//      fxn1 = 3'b000;
//      test_in1 = 6'b010000;
//       # 200;
 
//      test_in0 = 6'b000100; // 
//       fxn1 = 3'b000;
//       test_in1 = 6'b000110;
//       # 200;
       
//       test_in0 = 6'b111111; // 
//       fxn1 = 3'b000;
//       test_in1 = 6'b010000;
//        # 200; 
        
//      test_in0 = 6'b000011; // 
//        fxn1 = 3'b000;
//        test_in1 = 6'b110000;
//        # 200;
        
//        test_in0 = 6'b011110; // end of fxn=000
//        fxn1 = 3'b000;
//        test_in1 = 6'b010000;
//         # 200;     
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//     test_in0 = 6'b000000; // fxn =001 all worked perfectly well so moved on
//      fxn1 = 3'b001;           //making sure that output is same as test_in1
//      test_in1 = 6'b000000;
//      # 200;
      
//      test_in0 = 6'b011100; // 
//      fxn1 = 3'b001;
//      test_in1 = 6'b010000;
//       # 200;
 
//      test_in0 = 6'b000100; // 
//       fxn1 = 3'b001;
//       test_in1 = 6'b000110;
//       # 200;
       
//       test_in0 = 6'b111111; // 
//       fxn1 = 3'b001;
//       test_in1 = 6'b010000;
//        # 200; 
        
//      test_in0 = 6'b000011; // 
//        fxn1 = 3'b001;
//        test_in1 = 6'b111111;
//        # 200;
        
//        test_in0 = 6'b011110; // 
//        fxn1 = 3'b001;
//        test_in1 = 6'b010011;
//         # 200; 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//      test_in0 = 6'b000000; // fxn=010 - testing completed all tests were correct this is for -A
//      fxn1 = 3'b010;               //making sure that output is same as -(test_in0)
//      test_in1 = 6'b000000;
//      # 200;
      
//      test_in0 = 6'b011100; // 
//      fxn1 = 3'b010;
//      test_in1 = 6'b010000;
//       # 200;
 
//      test_in0 = 6'b000100; // 
//       fxn1 = 3'b010;
//       test_in1 = 6'b000110;
//       # 200;
       
//       test_in0 = 6'b111111; // 
//       fxn1 = 3'b010;
//       test_in1 = 6'b010000;
//        # 200; 
        
//      test_in0 = 6'b000011; // 
//        fxn1 = 3'b010;
//        test_in1 = 6'b110000;
//        # 200;
        
//        test_in0 = 6'b011110; // end of fxn=000
//        fxn1 = 3'b010;
//        test_in1 = 6'b010000;
//         # 200;     
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//     test_in0 = 6'b000000; // fxn =100 all worked perfectly well so moved on This is A>=B
//      fxn1 = 3'b100;           //making sure that output is correct value and tests where taken from previous lab. 
//      test_in1 = 6'b000100;
//      # 200;
      
//      test_in0 = 6'b011100; // 
//      fxn1 = 3'b100;
//      test_in1 = 6'b010110;
//       # 200;
 
//      test_in0 = 6'b000100; // 
//       fxn1 = 3'b100;
//       test_in1 = 6'b000111;
//       # 200;
       
//       test_in0 = 6'b111111; // 
//       fxn1 = 3'b100;
//       test_in1 = 6'b110011;
//        # 200; 
        
//      test_in0 = 6'b000011; // 
//        fxn1 = 3'b100;
//        test_in1 = 6'b101111;
//        # 200;
        
//        test_in0 = 6'b011110; // 
//        fxn1 = 3'b100;
//        test_in1 = 6'b111111;
//         # 200;
         
//         test_in0 = 6'b100000;
//         fxn1 = 3'b100;
//         test_in1 = 6'b110000;
//         # 200;
//         // test vector 2
//         test_in0 = 6'b111000;
//         fxn1 = 3'b100;
//         test_in1 = 6'b110000;
//         # 200;
//         // test vector 3
//         test_in0 = 6'b111111;
//         fxn1 = 3'b100;
//         test_in1 = 6'b111111;
//         # 200;
//         // test vector 4
//         test_in0 = 6'b100000;
//         fxn1 = 3'b100;
//         test_in1 = 6'b100100;
//         # 200;
//         // test vector 5
//         test_in0 = 6'b010000;
//         fxn1 = 3'b100;
//         test_in1 = 6'b000000;
//         # 200;
//         // test vector 6
//         test_in0 = 6'b101010;
//         fxn1 = 3'b100;
//         test_in1 = 6'b110001;
//         # 200;
//         // test vector 7
//         test_in0 = 6'b110001;
//         fxn1 = 3'b100;
//         test_in1 = 6'b111111;
//         # 200;
         
//         // test vector 7
//          test_in0 = 6'b010000;
//          fxn1 = 3'b100;
//          test_in1 = 6'b010000;
//          # 200;
          
//          test_in0 = 6'b011000;
//          fxn1 = 3'b100;
//          test_in1 = 6'b111100;
//          # 200;
//                // test vector 2
//          test_in0 = 6'b111000;
//          fxn1 = 3'b100;
//          test_in1 = 6'b110000;
//          # 200;       
              
//  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   
  
//        test_in0 = 6'b000000; // fxn =101 all worked perfectly well so moved on This is A^B
//        fxn1 = 3'b101;        // no real reason behind these testcases just needed to make sure that they worked
//        test_in1 = 6'b000100;
//        # 200;
        
//        test_in0 = 6'b011100; // 
//        fxn1 = 3'b101;
//        test_in1 = 6'b010110;
//         # 200;
   
//        test_in0 = 6'b000100; // 
//         fxn1 = 3'b101;
//         test_in1 = 6'b000111;
//         # 200;
         
//         test_in0 = 6'b111111; // 
//         fxn1 = 3'b101;
//         test_in1 = 6'b110011;
//          # 200; 
          
//        test_in0 = 6'b000011; // 
//          fxn1 = 3'b101;
//          test_in1 = 6'b101111;
//          # 200;
          
//          test_in0 = 6'b011110; // 
//          fxn1 = 3'b101;
//          test_in1 = 6'b111111;
//           # 200;
           
//           test_in0 = 6'b100000;
//           fxn1 = 3'b101;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 2
//           test_in0 = 6'b111000;
//           fxn1 = 3'b101;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 3
//           test_in0 = 6'b111111;
//           fxn1 = 3'b101;
//           test_in1 = 6'b111111;
//           # 200;
//           // test vector 4
//           test_in0 = 6'b100000;
//           fxn1 = 3'b101;
//           test_in1 = 6'b100100;
//           # 200;
//           // test vector 5
//           test_in0 = 6'b010000;
//           fxn1 = 3'b101;
//           test_in1 = 6'b000000;
//           # 200;
//  ////////////////////////////////////////////////////////////////////////////////////////////////// 
// these test values where taken from the previous labs and then more test cases where added to make sure file was working correctly
    
//      test_in0 = 6'b000001; // 1addition of 1+1 no overflow or carryout
//      fxn1 = 3'b110;
//      test_in1 = 6'b000001;
//      # 200;
      
//      test_in0 = 6'b000001; //
//      fxn1 = 3'b110;
//      test_in1 = 6'b000001;
//      # 200;
           
//      test_in0 = 6'b011111; // 3 with overflow
//      fxn1 = 3'b110;
//      test_in1 = 6'b011111;
//      # 200;
               
//      test_in0 = 6'b011111; //4subraction with carryout 
//      fxn1 = 3'b110;
//      test_in1 = 6'b000111;
//       # 200;               //1/4 o the way there.
      
//      test_in0 = 6'b100001; //5 addition of -1+-1 with overflow and carryout
//      fxn1 = 3'b110;
//      test_in1 = 6'b100001;
//             # 200;
             
//       test_in0 = 6'b111001; //6 addition with carryout
//       fxn1 = 3'b110;
//       test_in1 = 6'b111001;
//          # 200;
          
//       test_in0 = 6'b111001; //7
//       fxn1 = 3'b110;
//       test_in1 = 6'b100001;
//       # 200; // half way
              
//        test_in0 = 6'b000001; //8 1 + and 1 -
//         fxn1 = 3'b110;
//         test_in1 = 6'b100001;
//           # 200;
           
//       test_in0 = 6'b000001; //9 
//        fxn1 = 3'b110;
//         test_in1 = 6'b100001;
//          # 200;
          
          

//        test_in0 = 6'b000000; // 0 addition
//        fxn1 = 3'b110;
//        test_in1 = 6'b00000;
//        # 200;
          
//         test_in0 = 6'b000000; //  0
//         fxn1 = 3'b110;
//         test_in1 = 6'b00000;
//         # 200;
         
//        test_in0 = 6'b000100; // 
//         fxn1 = 3'b110;
//         test_in1 = 6'b000111;
//         # 200;
         
//         test_in0 = 6'b111111; // 
//         fxn1 = 3'b110;
//         test_in1 = 6'b110011;
//          # 200; 
          
//        test_in0 = 6'b000011; // 
//          fxn1 = 3'b110;
//          test_in1 = 6'b101111;
//          # 200;
          
//          test_in0 = 6'b011110; // 
//          fxn1 = 3'b110;
//          test_in1 = 6'b111111;
//           # 200;
           
//           test_in0 = 6'b100000;
//           fxn1 = 3'b110;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 2
//           test_in0 = 6'b111000;
//           fxn1 = 3'b110;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 3
//           test_in0 = 6'b111111;
//           fxn1 = 3'b110;
//           test_in1 = 6'b111111;
//           # 200;
//           // test vector 4
//           test_in0 = 6'b100000;
//           fxn1 = 3'b110;
//           test_in1 = 6'b100100;
//           # 200;
//           // test vector 5
//           test_in0 = 6'b010000;
//           fxn1 = 3'b110;
//           test_in1 = 6'b000000;
//           # 200;
      
 //////////////////////////////////////////////////////////////////////////////////////////////////////   
 // again most of this code is taken from the perviou assignment but just more test cases added.  
      test_in0 = 6'b000001; // this section is a-b
      fxn1 = 3'b111;
      test_in1 = 6'b000001;
      # 200;
      
      test_in0 = 6'b000001; //2subtraction of 1-1 no overflow or carryout
      fxn1 = 3'b111;
      test_in1 = 6'b000001;
      # 200;
           
      test_in0 = 6'b011111; // 
      fxn1 = 3'b111;
      test_in1 = 6'b011111;
      # 200;
               
      test_in0 = 6'b000111; //4subraction with carryout 
      fxn1 = 3'b111;
      test_in1 = 6'b100111;
       # 200;               //1/4 o the way there.
      
      test_in0 = 6'b110001; //5 
      fxn1 = 3'b111;
      test_in1 = 6'b100001;
             # 200;
             
       test_in0 = 6'b111001; //6
       fxn1 = 3'b111;
       test_in1 = 6'b111001;
          # 200;
          
       test_in0 = 6'b111001; //7 
       fxn1 = 3'b111;
       test_in1 = 6'b100001;
       # 200; // half way
              
        test_in0 = 6'b000001; //8 
         fxn1 = 3'b111;
         test_in1 = 6'b100001;
           # 200;
           
       test_in0 = 6'b000001; //9 subtraction with overflow
        fxn1 = 3'b111;
         test_in1 = 6'b100001;
          # 200;
          
          

        test_in0 = 6'b011110; //
        fxn1 = 3'b111;
        test_in1 = 6'b100001;
        # 200;
          
         test_in0 = 6'b000000; //  0 subtraction
         fxn1 = 3'b111;
         test_in1 = 6'b00000;
         # 200;
         
        test_in0 = 6'b000100; // 
         fxn1 = 3'b111;
         test_in1 = 6'b000111;
         # 200;
         
         test_in0 = 6'b111111; // 
         fxn1 = 3'b111;
         test_in1 = 6'b110011;
          # 200; 
          
//        test_in0 = 6'b000011; // 
//          fxn1 = 3'b111;
//          test_in1 = 6'b101111;
//          # 200;
          
//          test_in0 = 6'b011110; // 
//          fxn1 = 3'b111;
//          test_in1 = 6'b111111;
//           # 200;
           
//           test_in0 = 6'b100000;
//           fxn1 = 3'b111;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 2
//           test_in0 = 6'b111000;
//           fxn1 = 3'b111;
//           test_in1 = 6'b110000;
//           # 200;
//           // test vector 3
//           test_in0 = 6'b111111;
//           fxn1 = 3'b111;
//           test_in1 = 6'b111111;
//           # 200;
//           // test vector 4
//           test_in0 = 6'b100000;
//           fxn1 = 3'b111;
//           test_in1 = 6'b100100;
//           # 200;
//           // test vector 5
//           test_in0 = 6'b010000;
//           fxn1 = 3'b111;
//           test_in1 = 6'b000000;
//           # 200;
      
      
      
      $stop;
   end
   

endmodule
