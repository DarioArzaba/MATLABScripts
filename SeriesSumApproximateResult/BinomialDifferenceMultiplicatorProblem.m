% Dario Abraham Arzaba Diaz A01367752

format long
clear, clc;

% Problema 5 del Examen
fprintf('Problema 5 del Examen \n \n');

n = 0;
while n < 1 | rem(n,1) ~= 0
    n = input('Introduzca el valor de N:');
    if n < 1 | rem(n,1) ~= 0
        fprintf('ERROR: N debe ser un numero entero mayor o igual a 1.\n');
    end
end
x = input('Introduzca el valor de X:');
rstr = ' ';
r = 1;
for i = 0:n
    strI = num2str(i);
    prompt = append('Introduzca el valor de x' , strI , ': ');
    xn = input(prompt);
    rstr = append(rstr, '(' , num2str(x) , ' - ' , num2str(xn) , ')' ); 
    r = r * ((x-xn));
end
fprintf('Operaciones: \n %s \n', rstr);
fprintf('Resultado = %f', r);
