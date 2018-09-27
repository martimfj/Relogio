# Projeto 1: Relógio Digital - Design de Computadores

Leonardo Medeiros, Martim Ferreira José e Sabrina Simão <br>
Engenharia da Computação - Insper

## Descrição
Este projeto consistiu na implementação de um relógio digital, que indica as horas, minutos e segundos, em uma placa FPGA DE2-115. O relógio possui um sistema que acerta o tempo e outro que muda a seleção da base de tempo, podendo alterar entre a visualização de 12h e 24h. O projeto foi programado em VHDL no programa Intel Quartus e foi dividido em fluxo de dados, unidade de controle e top level.

## Fluxo de dados
No [fluxo de dados](../master/Relogio/FluxoDados.vhd) temos a visão geral de como os componentes do relógio se relacionam e como se conectam.
![Diagrama de Fluxo de Dados](./img/fluxo_dados_diagrama.png)

Como pode ser visto, temos um [MUX](../master/Relogio/Mux.vhd) (Multiplexador) que tem como entrada os [Registradores](../master/Relogio/Registrador.vhd) de cada unidade de hora do relógio, que são selecionadas a partir do seletor `SELTMP`. A conexão entre MUX e registradores pode ser observada pelo portmap a seguir:

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

A saída da ULA é o resultado da incrementação ou da subtração, que é ligada ao registrador que está sendo utilizado. Este registrador é especificado entre os outros por meio do `Enable`. Pelo diagrama é possível ver que cada [Registrador](../master/Relogio/Registrador.vhd) é ligado ao [Decorder](../master/Relogio/conversorHex7Seg.vhd) de sete segmentos, que manda o sinal para placa exibir o número em questão. O port map do decodificador pode ser visto a baixo:
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
A unidade de controle é a máquina de estados que vai controlar a ordem na qual o fluxo de dados irá ocorrer. Para implementar o relógio, foi preciso pensar em como mudar a unidade de tempo assim que ela atingisse o seu máximo de forma cíclica. A seguir estão os máximos para cada unidade de tempo:
* **Unidade de segundo (US):** 10
* **Dezena de segundo (DS):** 6
* **Unidade de minuto (UM):** 10
* **Dezena de minuto (DM):** 6
* **Unidade de hora (UH):** 4 (base de tempo 24h) ou 2 (base de tempo 12h)
* **Dezena de hora (DH):** 2 (base de tempo 24h) ou 1 (base de tempo 12h)

Obs: Esses números são as constantes do primeiro MUX ([Fluxo de Dados](#fluxo-de-dados))

A máquina de estados implementada pode ser observada pelo diagrama a seguir:
![Diagrama de Máquina de Estados](./img/fluxo_maquina_estados.png)

No diagrama, é possível observar que temos 3 estados base: adição, comparação e reset. Cada um dos estados têm uma saída específica de 13 bits que é a instrução que irá para o Top Level. A instrução é constituída pelo SELCNT, SELTMP, SELULA e Enables. Para exemplificar, temos abaixo 2 estados diferentes, adição da unidade de segundo e subtração da dezena de minuto.

| Descrição do bit 	| Adição US | Subtração DM |
|:----------------:	|:---------:|:------------:|
|    SELCNT (1)    	|     0     |       1      |
|    SELCNT (2)    	|     0     |       0      |
|    SELCNT (3)    	|     1     |       0      |
|    SELTMP (1)    	|     0     |       0      |
|    SELTMP (2)    	|     0     |       1      |
|    SELTMP (3)    	|     0     |       1      |
|      SELULA      	|     0     |       1      |
|     Enable 1     	|     1     |       0      |
|     Enable 2     	|     0     |       0      |
|     Enable 3     	|     0     |       0      |
|     Enable 4     	|     0     |       0      |
|     Enable 5     	|     0     |       0      |
|     Enable 6     	|     0     |       0      |

Se quisermos fazer incrementar 1 no registrador da unidade de segundos, precisamos enviar para o Top Level a seguinta instrução: `00100001000000`. Que se traduz em carregar a entrada 1 do MUX de constantes, carregar a entrada 0 do MUX de registradores, carregar a função 0 na ULA, carregar 1 no enable do registrador 1 e 0 no enable dos outros registradores. Isto é, soma o valor do registrador US com 1 e guarde no registrador US.

Para fazer a subtração (comparação) da dezena de minuto, precisamos enviar para o Top Level a seguinte instrução: `10001110000000`. Que se traduz em caregar a entrada 4 do MUX de constantes, carregar a entrada 3 do MUX de registradores, carregar a função 1 na ULA e caregar 0 em todos os carregadores. Isto é, subtraí o valor do registrador DM por 6.

## Top Level
O top level do projeto une as duas parter do projeto: Unidade de Controle com o Fluxo de dados. Vindo da Unidade de controle, temos a instrução que o fluxo de dados deve executar para performar a ação necessária do relógio. Já o fluxo de dados Portanto, no arquivo do Top Level, é preciso fazer o port map da unidade de controle e do fluxo de dados:

```vhdl
S0: SM1 port map(
                reset => '0', clock => saida_clk, 
                input1 => out_flag, output1 => comando);

F0: FluxoDados port map( 
                        clk        => saida_clk,
                        Sel_Ula    => comando(7),
                        Sel_Mux1   => comando(13 downto 11),
                        Sel_Mux2   => comando(10 downto 8),
                        ENABLE	   => comando(6 downto 1),
                        Flag       => out_flag,

                        R1 => OUT_R1, R2 => OUT_R2, R3 => OUT_R3, R4 => OUT_R4, R5 => OUT_R5, R6 => OUT_R6
                        );
```
