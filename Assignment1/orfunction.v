
module orfunction(
    input  wire i0, i1,			
    output wire eq        
    );
    
    //this is a simple ^ function file 
    
     
     assign eq = i0^i1; // p0+p1
     
//the output for the greater than comparator coming from the karnuagh map ( i0[0] = A0, i0[1]=A1, i1[0]=B0, i1[1]=B1)

endmodule
