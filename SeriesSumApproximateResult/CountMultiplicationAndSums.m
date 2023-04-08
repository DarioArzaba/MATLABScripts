% Dario Abraham Arzaba Diaz A01367752

format long
clear, clc;

% Problema 3 del Examen
fprintf('Problema 3 del Examen \n \n');
fprintf('Contar multiplicaciones y sumas: \n \n');

n = 5;

resultado = '[';
s = 0;
m = 0;
for i = 1:n
    for j = 1:i
        tempI = num2str(i);
        tempJ = num2str(j);
        resultado = append(resultado, '(a', tempI, ' b', tempJ,')+');
        s = s + 1;
    end
    resultado = resultado(1:end-1);
    resultado = append(resultado, ']+[');
end
resultado = resultado(1:end-2);
m = s;
s = s - 1;
sn = ((n-1)*(n+2))/2;
mn = ((n)*(n+1))/2;
fprintf('Operaciones: \n %s \n\n', resultado);
fprintf('Numero de Sumas: %d \n', s);
fprintf('Numero de Multiplicaciones: %d \n', m);
fprintf('Mediante Formula de Sumas: %d \n', sn);
fprintf('Mediante Formula de Multiplicaciones: %d \n', mn);