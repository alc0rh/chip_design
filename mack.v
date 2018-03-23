module mack(x,y,clk,rst,z);
 //multiply and accumulate unit
 input x,y, clk, rst;
 reg g; 
 reg temp;
 output z;
 reg z;

 //multiplication
 always@(x or y)
  begin 
   g <= x*y;
  end

 //accumulation
 always@(posedge clk or posedge rst)
  begin
   if(rst==1)
     temp <= g;
   else
     temp <= temp + g;
  end

 always@(temp)
  begin
    z <= temp;
  end

endmodule  