module fibonacci(





input clock
input reset
input n1;
input n2;
input n3;
input  N [7:0]

output saida_do_comparador;
output FIB_SAIDA[7:0];
--enebles
input enable_reg1;
input enable_reg2;
input enable_regN;
input enable_count;
);



reg  [7:0] reg1;
reg [7:0] reg2 ;
reg [7:0] regf ;
reg [7:0] count;

--muxs
reg [3:0] mux1;
reg [3:0] mux2;
reg [3:0] mux3;


reg [7:0] count;

reg comparador;




always@(*)
 if reset=1'b1
    mux1<=n1;
else 
 mux1<=reg2;
 end
 
always@(*)
 if reset=1'b1
    mux2<=n2;
else 
 mux2<=somador;
 end

 
always@(*)
begin
    if reset=1'b1
        mux3<=n3;
    else 
    mux3<=somador2;
end




always@(*)
begin
if regf<count
    comparador<=1;
else 
    comparador<=0;
end if;
end
assign somador1=reg2+reg1;    
assign somador2=1+count;   



always@ (posedge clock) -- borda de clock
    if enable_reg1=='1' OR enable_reg2=='1' OR enable_regN=='1' OR enable_count=='1'
        reg1<=mux1;
        reg2<=mux2;
        regf<=N;
        count<=mux3;
        FIB_SAIDA<=reg1;
end;





