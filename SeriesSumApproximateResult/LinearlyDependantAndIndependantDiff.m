% Dario Abraham Arzaba Diaz A01367752

format long
clear, clc;

% Problema 4 del Examen
fprintf('Problema 4 del Examen \n \n');

diferencia = 1;

x = 0.25;

LD = (1+2*(0.25))/(1+(0.25)+(0.25)^2);
fprintf(' LD = %0.6f    Diff Menor a 0.000001 \n', LD);
n1 = 1;
n2 = 2;
exp1 = 0;
exp2 = 1;
exp3 = 1;
exp4 = 2;
terminos = 1;
LI = 0;
while diferencia > 0.000001
    LI = LI + (n1*(x)^exp1 - n2*(x)^exp2)/(1 - (x)^exp3 + (x)^exp4);
    diferencia = abs(LD-LI);
    fprintf(' (%d Terminos) LI = %0.7f     Diff = %0.7f \n', terminos, LI, diferencia);
    n1 = n1*2;
    n2 = n2*2;
    exp1 = exp1+exp3;
    exp2 = exp2+exp4;
    exp3 = exp3*2;
    exp4 = exp4*2;
    if (diferencia > 0.000001)
       terminos = terminos + 1; 
    end
end
fprintf('Terminos Necesarios = %d \n', terminos);
