-----------------------------------Part00:start of counter--------------------------------------------------------------------
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

-----------------------------------Part00:end of counter--------------------------------------------------------------------
-----------------------------------Part01:Start of SPI--------------------------------------------------------------------
module testbench;
     reg sys_clk;
     wire CS,MOSI,MISO;
     
     //DUT
     module Example_00(sys_clk,CS,MOSI,MISO);
    
    integer k=0;
    
    initial
    begin
        sys_clk<=0;
        for(k=0;k<100;k=k+1)
        #10 sys_clk=k;  //given 100 ns
        
        #5 $finish;
        
    end
        
//        for(k=0;k<100;k=k+1)
        
endmodule
  
    
module Example_00(
     input  wire sys_clk,
     output reg CS,
     output wire MOSI,
     input  wire MISO
    );
    
    
    assign MOSI=sys_clk;
    
    
    
endmodule
-----------------------------------Part01:End of SPI--------------------------------------------------------------------

