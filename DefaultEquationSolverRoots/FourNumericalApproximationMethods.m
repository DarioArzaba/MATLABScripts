format long
clear, clc;

fprintf('Problema 1 \n \n');

eValorReal = 2.71828;
truncamiento = 5;

% Inciso A

eaprox = 0;
for n = 0:1:5
    factN = factorial(n);
    divFact = 1/factN;
    divFactNorm = floor(divFact*(10)^truncamiento)/(10)^truncamiento;
    eaprox = eaprox + divFactNorm;
    fprintf(' a) s(%d) = %0.5f \n', n, eaprox);
end
errorAbsoluto = abs(eValorReal-eaprox);
errorAbsoluto = floor(errorAbsoluto*(10)^truncamiento)/(10)^truncamiento;
errorRelativo = errorAbsoluto/eValorReal;
errorRelativo = floor(errorRelativo*(10)^truncamiento)/(10)^truncamiento;
errorRelativoPorcentual = errorRelativo*100;
fprintf(' a) Error Absoluto = %0.5f \n', errorAbsoluto);
fprintf(' a) Error Relativo = %0.5f \n', errorRelativo);
fprintf(' a) Error Relativo Porcentual = %0.3f%% \n \n', errorRelativoPorcentual);

% Inciso B

eaprox = 0;
for j = 0:1:5
    factN = factorial(5-j);
    divFact = 1/factN;
    divFactNorm = floor(divFact*(10)^truncamiento)/(10)^truncamiento;
    eaprox = eaprox + divFactNorm;
    fprintf(' b) s(%d) = %0.5f \n', j, eaprox);
end
errorAbsoluto = abs(eValorReal-eaprox);
errorAbsoluto = floor(errorAbsoluto*(10)^truncamiento)/(10)^truncamiento;
errorRelativo = errorAbsoluto/eValorReal;
errorRelativo = floor(errorRelativo*(10)^truncamiento)/(10)^truncamiento;
errorRelativoPorcentual = errorRelativo*100;
fprintf(' b) Error Absoluto = %0.5f \n', errorAbsoluto);
fprintf(' b) Error Relativo = %0.5f \n', errorRelativo);
fprintf(' b) Error Relativo Porcentual = %0.3f%% \n \n', errorRelativoPorcentual);

% Inciso C

eaprox = 0;
for j = 0:1:10
    factN = factorial(10-j);
    divFact = 1/factN;
    divFactNorm = floor(divFact*(10)^truncamiento)/(10)^truncamiento;
    eaprox = eaprox + divFactNorm;
    fprintf(' c) s(%d) = %0.5f \n', j, eaprox);
end
errorAbsoluto = abs(eValorReal-eaprox);
errorAbsoluto = floor(errorAbsoluto*(10)^truncamiento)/(10)^truncamiento;
errorRelativo = errorAbsoluto/eValorReal;
errorRelativo = floor(errorRelativo*(10)^truncamiento)/(10)^truncamiento;
errorRelativoPorcentual = errorRelativo*100;
fprintf(' c) Error Absoluto = %0.5f \n', errorAbsoluto);
fprintf(' c) Error Relativo = %0.5f \n', errorRelativo);
fprintf(' c) Error Relativo Porcentual = %0.3f%% \n \n', errorRelativoPorcentual);

% Inciso D

eaprox = 0;
for n = 0:1:10
    factN = factorial(n);
    divFact = 1/factN;
    divFactNorm = floor(divFact*(10)^truncamiento)/(10)^truncamiento;
    eaprox = eaprox + divFactNorm;
    fprintf(' d) s(%d) = %0.5f \n', n, eaprox);
end
errorAbsoluto = abs(eValorReal-eaprox);
errorAbsoluto = floor(errorAbsoluto*(10)^truncamiento)/(10)^truncamiento;
errorRelativo = errorAbsoluto/eValorReal;
errorRelativo = floor(errorRelativo*(10)^truncamiento)/(10)^truncamiento;
errorRelativoPorcentual = errorRelativo*100;
fprintf(' d) Error Absoluto = %0.5f \n', errorAbsoluto);
fprintf(' d) Error Relativo = %0.5f \n', errorRelativo);
fprintf(' d) Error Relativo Porcentual = %0.3f%% \n \n', errorRelativoPorcentual);