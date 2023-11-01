module fibonacci(
    input wire clock,
    input wire reset,
    input wire n1,
    input wire n2,
    input wire [7:0] N, 
    input wire n3,
    input wire enable_reg1,
    input wire enable_reg2,
    input wire enable_regN,
    input wire enable_count,
    output reg [7:0] saida_do_comparador,
    output reg [7:0] FIB_SAIDA
);

reg [7:0] reg1;
reg [7:0] reg2 ;
reg [7:0] regf ;
reg [7:0] count;
reg [7:0] somador1;
reg [7:0] somador2;
reg mux1[7:0];
reg mux2[7:0];
reg mux3[7:0];
reg comparador;
reg mux1[7:0];
reg mux2[7:0];
reg mux3[7:0];
reg comparador;



always @(*)
begin
    if (reset)
        mux1 <= n1;
    else
        mux1 <= reg2;
end



always @(*)
begin
    if (reset)
        mux1 <= n1;
    else
        mux1 <= reg2;
end

always @(*)
begin
    if (reset)
        mux3 <= n3;
    else
        mux3 <= somador2;
end

always @(*)
begin
    if (regf > count)
        comparador <= 1'b1;
    else
        comparador <= 1'b0;
end

always @(*)
begin
    somador1 <= reg2 + reg1;   
     somador2 <= 1 + count;
 end
 always @(posedge clock) 
begin
       if (enable_reg1 && enable_reg2 && enable_regN && enable_count)
       begin 
         reg1 <= mux1;
          reg2 <= mux2;
           regf <= N;
           count <= mux3;
           FIB_SAIDA <= reg1;
    end
end
endmodule