`timescale 1ns/1ns
module fibotb;

 reg clock;
    reg reset;
    reg n1, n2;
    reg [7:0] N;
    reg n3;
    reg enable_reg1, enable_reg2, enable_regN, enable_count;
    
    wire [7:0] saida_do_comparador;
    wire [7:0] FIB_SAIDA;

    fibonacci uut (
        .clock(clock),
        .reset(reset),
        .n1(n1),
        .n2(n2),
        .N(N),
        .n3(n3),
        .enable_reg1(enable_reg1),
        .enable_reg2(enable_reg2),
        .enable_regN(enable_regN),
        .enable_count(enable_count),
        .saida_do_comparador(saida_do_comparador),
        .FIB_SAIDA(FIB_SAIDA)
    );
    
      initial begin
           clock <= 0;
        reset = 1;
        n1 <= 8'b00000001;
        n2 <= 8'b00000010;
        N <= 8'b00000100;
        n3 <= 8'b00001000;
	#100 reset = 0;
        enable_reg1 <= 1'b1;
        enable_reg2 <= 1'b1;
        enable_regN <= 1'b1;
        enable_count <= 1'b1;
    //#200 $FINISH;
      end