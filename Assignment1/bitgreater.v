module bitg(
       input wire a,b,c,d,e,f,
       output wire abcd 
    );
    
    
    // CODE BELOW IS COMbining both the greater than and equal to karnmaugh maps to get the correct logic(>=)
    //again this code was alterned from preivous lab as we only comparing a 6 bit number rather than 8!
    assign abcd = (a)| (b&&c) | (d&&e) ||  (b&&d&&f);
   
    
endmodule
