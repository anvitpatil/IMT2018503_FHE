`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 16:05:33
// Design Name: 
// Module Name: bram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TRNG;
wire [7:0] data,din;
reg ena,wea;
reg clk;
reg reset; //i/p--wire
reg [7:0] memory[0:7]; //declare an 8-byte memory
reg [2:0] address;
integer file1;



always 
#5 clk = ~clk;

initial begin
clk=0;
address=3'b000;

end

initial begin

reset=1;
#10;
reset=0;
end

blk_mem_gen_0 Noise_sampler_Block (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(address),  // input wire [2 : 0] addra
  .dina(din),    // input wire [7 : 0] dina
  .douta(data)  // output wire [7 : 0] douta
);

initial
begin
ena=1;
wea=0; //read only
address=3'b000;

end


always @(posedge clk)
//display contents of initialized memory
begin

if(reset)
 address=3'b000;
else
	begin
	//data=memory[address];
	//$display("Memory [%0d] = %b", address, data);
	address=address+3'b001;
	end

end
//$fdisplay(file1,"Memory [%0d] = %b", address,data);
//$fclose(file1);
endmodule