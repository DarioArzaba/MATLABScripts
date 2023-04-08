% Algoritmo para dividir polinomios

clear, clc



coeficientesF = [1 -7.5 14.5 3 -20];
gradoPolinomio  = 4;
monomio = 2;



%Algoritmo del libro
resultadoF = [];
indexCoeficiente = 1;
i = gradoPolinomio-1;
r = coeficientesF(indexCoeficiente);
resultadoF = [resultadoF 0];
coeficienteI = 1;
while i > -1
    coeficienteI = coeficienteI+1;
    s = coeficientesF(coeficienteI);
    resultadoF = [resultadoF r]; 
    r = s+(r*monomio);
    gradoPolinomio = gradoPolinomio-1;
    i = i-1;
end
fprintf('Resultado => ');
fprintf('%g  ', resultadoF);
fprintf('\n');
fprintf('Residuo => %d \n', r);
fprintf('Concluimos que x=2 es un factor y raiz de la funcion \n\n');

%Algoritmo del MATLAB 
a = roots(coeficientesF);
m = [1 -2];
[f2, res] = deconv(coeficientesF,m);
fprintf('Comprobacion Raices =>  ');
fprintf('%g  ', a);
fprintf('\n');
fprintf('Comprobacion Resultado =>  ');
fprintf('%g  ', f2);
fprintf('\n');
fprintf('Comprobacion Resiudo => %d\n\n', res(end));


