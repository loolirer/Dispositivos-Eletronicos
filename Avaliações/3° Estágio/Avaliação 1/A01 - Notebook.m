% Curva característica de um Mosfet

% Importando dados fornecidos
Vgs = [0.5,1.0,1.44,1.55,1.6,1.63,1.65,1.67,1.7,1.73,1.75,1.77,1.8,1.83,1.85,1.87,1.89,1.91];
Id  = [0,0,2.73e-05,2.05e-04,4.09e-04,6.23e-04,8.41e-04,1.06e-03,1.5e-03,1.94e-03,2.39e-03,2.83e-03,3.73e-03,4.62e-03,5.52e-03,6.42e-03,7.32e-3,8.22e-3];

% Plotando a curva característica
plot(Vgs,Id)
grid on
title("Curva Característica do Mosfet (Id x Vgs)")
xlabel("Tensão Vgs (V)")
ylabel("Corrente Id (A)")

% Encontrando os parâmetros K e Vt
Vgs_S = Vgs(3:end);
Id_S  = Id(3:end);

% Id = K*(Vgs-Vt)^2
% Id = K*Vgs^2 - 2*K*Vt*Vgs + K*Vt^2
P = polyfit(Vgs_S, Id_S, 2); % P(1)*x^2 + P(2)*x + P(3)

K = P(1)
Vt = P(2)/(-2*K)

Id_Aj = K*(Vgs_S-Vt).^2;

% Plotando a curva característica modelada
plot(Vgs_S,Id_S, ";Curva Experimental;", Vgs_S, Id_Aj, ";Curva Modelada;")
grid on
title("Curva Característica Modelada do Mosfet (Id x Vgs)")


