module poly_add(a, b, q, c);
  parameter DATA_WIDTH = 16;
  input [DATA_WIDTH-1:0] a;
  input [DATA_WIDTH-1:0] b;
  input [DATA_WIDTH-1:0] q;
  output [DATA_WIDTH:0] c;
  reg [DATA_WIDTH:0] res;
  reg [DATA_WIDTH-1:0] mod;
  always @(a or b or q) begin
    res = a + b;
    mux m1(mod, q, 16d'0, res>=q);
    c = res - mod;
  end
endmodule

  
module mux(Y, D0, D1, S);
  parameter DATA_WIDTH = 16;
  output [DATA_WIDTH:0] Y;
  input [DATA_WIDTH-1:0] D0
  input [DATA_WIDTH-1:0] D1
  input S;
  wire T1, T2, Sbar;

  and (T1, D1, S), (T2, D0, Sbar);
  not (Sbar, S);
  or (Y, T1, T2);

endmodule