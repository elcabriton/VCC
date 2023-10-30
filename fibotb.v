module testbench();

    // Defina os sinais de entrada e saída para o módulo fibonacci
    reg clock;
    reg reset;
    reg n1, n2;
    reg [7:0] N;
    reg n3;
    reg enable_reg1, enable_reg2, enable_regN, enable_count;
    
    wire [7:0] saida_do_comparador;
    wire [7:0] FIB_SAIDA;
    
    // Instancie o módulo fibonacci
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

    // Gere um sinal de clock
    always begin
        #5 clock = ~clock; // Alterna o sinal de clock a cada 5 unidades de tempo
    end

    // Estímulos (valores de entrada)
    initial begin
        // Inicialize os sinais de entrada
        clock = 0;
        reset = 1'b1;
        n1 = 8'b00000001;
        n2 = 8'b00000010;
        N = 8'b00000100;
        n3 = 8'b00001000;
        enable_reg1 = 1'b1;
        enable_reg2 = 1'b1;
        enable_regN = 1'b1;
        enable_count = 1'b1;

        
        #10 reset = 1'b0;

       
        #10 $finish;
    end

endmodule
