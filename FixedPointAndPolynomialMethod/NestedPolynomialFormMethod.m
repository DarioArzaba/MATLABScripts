% Programa que determine la forma anidada

clear, clc

n = input('Cuantos coeficientes tiene la funcion: ');
nIndex = n-1;
x = input('Eliga un punto para evaluar la funcion: ');
i = 0; tempN = n;
formaGeneral = '';
formaAnidadaI = '';
formaAnidada = '';
formaGeneral = append(formaGeneral, 'f', num2str(nIndex), '(x) = ');
formaAnidadaI = append(formaAnidada, 'f', num2str(nIndex), '(x) = ');
rGeneral = 0; rGeneralSumas = 0; rGeneralMultiplicaciones = 0;
rAnidado = 0; rAnidadoSumas = 0; rAnidadoMultiplicaciones = 0;

while i < n
    tempN = tempN-1;
    strtempN = num2str(tempN);
    strPedir = append('Introdusca a', strtempN);
    a = input(strPedir);
    stra = num2str(a);
    if tempN == nIndex
        formaAnidada = append(formaAnidada, stra);
        rAnidado = rAnidado + a;
    else
        formaAnidada = append('(', formaAnidada, 'x+', stra,')');
        rAnidado = (rAnidado*x)+a;
        rAnidadoSumas = rAnidadoSumas+1;
        rAnidadoMultiplicaciones = rAnidadoMultiplicaciones+1;
    end
    if tempN > 1
        formaGeneral = append(formaGeneral, stra, 'x^', strtempN, '+');
        rGeneral = rGeneral + a*(x^tempN);
        rGeneralSumas = rGeneralSumas+1;
        rGeneralMultiplicaciones = rGeneralMultiplicaciones+tempN;
    elseif tempN == 1
        formaGeneral = append(formaGeneral, stra, 'x+');
        rGeneral = rGeneral + (a*x);
        rGeneralSumas = rGeneralSumas+1;
        rGeneralMultiplicaciones = rGeneralMultiplicaciones+1;
    else
        formaGeneral = append(formaGeneral, stra);
        formaAnidada = append(formaAnidadaI, formaAnidada);
        rGeneral = rGeneral + a;
    end
    i = i + 1;    
end

fprintf('\nForma General => %s \n', formaGeneral);
fprintf('Resultado => %0.4f \n', rGeneral);
fprintf('Sumas => %d \n', rGeneralSumas);
fprintf('Multiplicaciones => %d \n\n', rGeneralMultiplicaciones);

fprintf('Forma Anidada => %s \n', formaAnidada);
fprintf('Resultado => %0.4f \n', rAnidado);
fprintf('Sumas => %d \n', rAnidadoSumas);
fprintf('Multiplicaciones => %d \n', rAnidadoMultiplicaciones);