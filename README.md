# Projeto 1: Relógio Digital - Design de Computadores

Leonardo Medeiros, Martim Ferreira José e Sabrina Simão <br>
Engenharia da Computação - Insper

## Descrição
Este projeto consistiu na implementação de um relógio digital, que indica as horas, minutos e segundos, em uma placa FPGA DE2-115. O relógio possui um sistema que acerta o tempo e outro que muda a seleção da base de tempo, podendo alterar entre a visualização de 12h e 24h. O projeto foi programado em VHDL no programa Intel Quartus e foi dividido em fluxo de dados, unidade de controle e top level.

## Fluxo de dados
No [fluxo de dados](../master/Relogio/FluxoDados.vhd) temos a visão geral de como os componentes do relógio se relacionam e como se conectam.
![Diagrama de Fluxo de Dados](./img/fluxo_dados_diagrama.png)

Como pode ser visto, temos um [MUX](../master/Relogio/Mux.vhd) (Multiplexador) que tem como entrada os [REGISTRADORES](../master/Relogio/Registrador.vhd) de cada unidade de hora do relógio, que são selecionadas a partir do seletor `SELTMP`. A conexão entre MUX e registradores pode ser observada pelo portmap a seguir:

```vhdl
M2: Mux port map(A => OUT_R1, B => OUT_R2, C => OUT_R3, 
                 D => OUT_R4, E => OUT_R5, F => OUT_R6, 
                 Sel_Mux => Sel_Mux2, Q => OUT_m2);
```


Ao seu lado, temos outro [MUX](../master/Relogio/Mux.vhd) que tem como entrada as constantes que temos que comparar para verificar se é preciso incrementar a atual unidade de hora. A escolha da constante é feita pelo seletor `SELCNT`. Como pode ser observado a seguir:
```vhdl
M1: Mux port map(A => "0000", B => "0001", C => "1010", 
                 D => "0010", E => "0100", F => "0110", 
                 Sel_Mux => Sel_Mux1, Q => OUT_m1);
```

As "comparações" e a incrementações são feitas pela [ULA](../master/Relogio/ULA.vhd) (Unidade Lógica e Aritmética), que tem duas funções: adição e subtração. A adição é sempre feita com quando o seletor `SELULA` é `0`, incrementando uma unidade ao valor de entrada. Já a subtração, é realizada quando o seletor `SELULA` é `1`, subtraindo os dois valores e possivelmente ativando a flag Z, que indica que o resultado é zero. Neste caso, as entradas da ULA são os dois MUX com as constantes e com os valores do registradores. Isso pode ser observado pelo port map implementado:
```vhdl
U: ULA port map(A => OUT_m1, B => OUT_m2, 
                Sel_Ula => Sel_Ula, 
                Q => u1, Flag => u1_F);
```

A saída da ULA é o resultado da incrementação ou da subtração, que é ligada ao registrador que está sendo utilizado. Este registrador é especificado entre os outros por meio do `Enable`. Pelo diagrama é possível ver que cada [REGISTRADOR](../master/Relogio/Registrador.vhd) é ligado ao [DECODER](../master/Relogio/conversorHex7Seg.vhd) de sete segmentos, que manda o sinal para placa exibir o número em questão. O port map do decodificador pode ser visto a baixo:
```vhdl
display0 : entity work.conversorHex7seg
            Port map (saida7seg => HEX2, dadoHex => OUT_R6, apaga => auxOverFlow);
 
display1 : entity work.conversorHex7seg
            Port map (saida7seg => HEX3, dadoHex => OUT_R5, apaga => auxOverFlow);

display2 : entity work.conversorHex7seg
            Port map (saida7seg => HEX4, dadoHex => OUT_R4, apaga => auxOverFlow);

display3 : entity work.conversorHex7seg
            Port map (saida7seg => HEX5, dadoHex => OUT_R3, apaga => auxOverFlow);

display4 : entity work.conversorHex7seg
            Port map (saida7seg => HEX6, dadoHex => OUT_R2, apaga => auxOverFlow);
 
display5 : entity work.conversorHex7seg
            Port map (saida7seg => HEX7, dadoHex => OUT_R1, apaga => auxOverFlow);
```

## Unidade de Controle
A unidade de controle é a máquina de estados que vai controlar a ordem na qual o fluxo de dados irá ocorrer. Para implementar o relógio, foi preciso pensar em como mudar a unidade de tempo assim que ela atingisse o seu máximo. A seguir estão os máximos para cada unidade de tempo:
* Unidade de segundo (US): 10
* Dezena de segundo (DS): 6
* Unidade de minuto (UM): 10
* Dezena de minuto (DM): 6
* Unidade de hora (UH): 4 (base de tempo 24h) ou 2 (base de tempo 12h)
* Dezena de hora (DH): 2 (base de tempo 24h) ou 1 (base de tempo 12h)

Obs: Esses números são as constantes do primeiro MUX ([Fluxo de Dados](#fluxo-de-dados))

A máquina de estados implementada pode ser observada pelo diagrama a seguir:
![Diagrama de Máquina de Estados](./img/fluxo_dados_diagrama.png)

## Top Level

