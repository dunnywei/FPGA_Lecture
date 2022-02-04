-----------------------------------start of counter--------------------------------------------------------------------
module Example_00(
//    input sys_clk,
//    output [7:0] y
    );
     reg [7:0] cnt;
     reg sys_clk, _output;
     initial begin
     cnt<=8'd5;//execute together at same time within block of begin and end
     sys_clk=1'b0;
     _output=1'b0;
     end
     
     always sys_clk = #10 ~sys_clk;
     
     always @(posedge sys_clk)
        cnt<=cnt+1;  
        
  //   assign y=cnt;   
endmodule

-----------------------------------end of counter--------------------------------------------------------------------
