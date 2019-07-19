module equalto
(
    input  wire[1:0] i0, i1,			// a adn b are the two 2-bit numbers to compare
    output wire eq        
    );
    
     wire p0, p1,p2,p3;
     
     assign eq = p0|p1|p2|p3; // p0+p1+p2p3
     
//the output for the equal to comparator coming from the karnuagh map ( i0[0] = A0, i0[1]=A1, i1[0]=B0, i1[1]=B1)
     assign p0= (!i0[0]&!i1[0]&!i0[1]&!i1[1]); // !A0!B0!A1!B1
     assign p1= (i0[0]&i1[0]&!i0[1]&!i1[1]);// A0!B0!A1!B1
     assign p2= (i0[0]&i1[0]&i0[1]&i1[1]);// A0B0A1B1
     assign p3= (!i0[0]&!i1[0]&i0[1]&i1[1]);// !A0!B0A1B1
     
     
     
    
endmodule