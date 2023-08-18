% Curva caractéristica de um transistor - ATV 01 TBJ

% Construindo a curva característica do transistor (IC x VCE).

% Importando dados fornecidos 

Vb = [0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.65 0.64 0.63 0.62 0.61 0.6 0.6];

Vce = [5 4.25 3.93 3.52 3.32 3.03 2.5 2.12 1.96 1.44 0.95  0.59 0.26 0.23 0.17 0.14 0.1 0.0923 0.0775 0.0661 0.0569 ];

Ic = [2.99 2.98 2.97 2.96 2.95 2.94 2.92 2.91 2.9 2.88 2.85 2.81 2.55 2.44 2.13 1.66 0.99 0.77 0.5 0.34 0.24 ];


% Plotando a curva característica
plot(Vce,Ic)
grid on
title("Curva Característica do TBJ (IC x VCE)")
xlabel("Tensão Vce (V)")
ylabel("Corrente Ic (mA)")

% Encontrando as regiões de operação
Vcsat = 0.3;

plot(Vc,Ic,[Vcsat,Vcsat],[0,3],'--')
grid on
title("Curva Característica do TBJ (IC x VCE)")
xlabel("Tensão Vce (V)")
ylabel("Corrente Ic (mA)")


