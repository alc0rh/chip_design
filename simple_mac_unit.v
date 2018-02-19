module mac(a,b,c,d);
 input[3:0] a,b;
 input[9:0] c; 
 output wire [10:0] d;
 wire[3:0] y;
 assign y = a*b;
 assign d = c+y;
endmodule 
