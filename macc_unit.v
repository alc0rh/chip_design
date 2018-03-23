module macc(x,y,CLR,C,Q);
//another implementation of a MAC unit
input x,y;
wire g;
input CLR, C;
reg tmp;
output Q;

//multiplication 
assign g = x*y;

//accumulation
always @(posedge C or posedge CLR)
    begin 
      if (CLR) 
        tmp <= 4'b0000; 
      else 
        tmp <= tmp + g; 
    end 

assign Q = tmp; 

endmodule
 