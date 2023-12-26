process(clock)
    begin
        
            
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
        if (reset='1') then
            reg0_neibor <= "0000000000000000";
            reg1_neibor <= "0000000000000000";
            reg2_neibor <= "0000000000000000";
            reg3_neibor <= "0000000000000000";
            reg4_neibor <= "0000000000000000";
            reg5_neibor <= "0000000000000000";
            reg6_neibor <= "0000000000000000";
            reg7_neibor <= "0000000000000000";
            reg8_neibor <= "0000000000000000";
            reg9_neibor <= "0000000000000000";
            reg10_neibor <= "0000000000000000";
            reg11_neibor <= "0000000000000000";
            reg12_neibor <= "0000000000000000";
            reg13_neibor <= "0000000000000000";
            reg14_neibor <= "0000000000000000";
            reg15_neibor <= "0000000000000000";

            elsif (rising_edge(clock)) then
        --15 13 10 6 
        --14 11 7 3
        --12 8 4 1
        --9 5 2 0
                if escolha ="0000" then
                    reg0_neibor<=reg_neibor;
                    reg1_neibor<=entrada+reg1_neibor;
                    reg2_neibor<=entrada+reg2_neibor;
                    if (escolha="0001" and escolha="0000")
                        reg3_neibor<=entrada+reg3_neibor;
                    elsif (escolha="0010" and escolha="0000" and escolha="0001")
                        reg4_neibor<=entrada+reg4_neibor;

              
                    
            

