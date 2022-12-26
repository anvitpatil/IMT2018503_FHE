module polyadd_tb;
  parameter DATA_WIDTH = 16;
  parameter DATA_WIDTH = 16;
  reg [DATA_WIDTH-1:0] a;
  reg [DATA_WIDTH-1:0] b;
  reg [DATA_WIDTH-1:0] q;
  wire [DATA_WIDTH:0] c;
  
  poly_add uut(.a(a), .b(b), .q(q), .c(c));
  
  initial begin
 #10 a=16d'10;
    b = 16d'10;
    q = 16d'10;
    
    $display("a=%d, b=%d, c=%d ",a,b,c);
  end
  
endmodule

