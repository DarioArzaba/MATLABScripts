% Metodo Abierto
% Metodo de Punto Fijo 
% Tambien llamado sustitucion sucesiva

% Ejemplo
% F = 'cos(x)-3*x'
% G = 'cos(x)/3'
% X = pi/8
% Tol = 0.00001

clear, clc

strFuncionF = input('Ingrese su Funcion F: ');
strFuncionG = input('Ingrese su Funcion G: ');
FuncionF = str2func(['@(x) ',strFuncionF]);
FuncionG = str2func(['@(x) ',strFuncionG]);
syms x
derivativeFunctionG = diff(str2sym(strFuncionG), x);
% Valor dentro de intervalo en donde hay cambio de signo
x = input('Ingrese el primer valor de X: ');

evaluarG = abs(eval(derivativeFunctionG));

if evaluarG < 1
    tolerancia = input('Ingrese la Tolerancia Deseada: ');
    disp('      iteracion      punto        Error')
    fprintf('     0.0000    %0.4f       -------\n', x)
    n = 0;
    error = 100;
    while error > tolerancia
        n = n+1;
        x = FuncionG(x);
        error = abs(FuncionF(x));
        disp([n,x,error])
    end
else
    disp('Ingrese otra funcion g(x) ya que el metodo diverge.')
end

fprintf('Raiz = %0.5f', x);