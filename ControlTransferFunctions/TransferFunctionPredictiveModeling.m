% Limpiar consola y variables
clc
clear
close all

% Detectar automaticamente opciones de importacion para la hoja de calculo
ExcelFileOptions = detectImportOptions('datos.xlsx');
% Utilizar las opciones detectadas para mostrar el contenido de la hoja 
preview('datos.xlsx', ExcelFileOptions);

% Utilizar opciones de importacion manuales para obtener datos de entrada y
% salida
PHI1 = readmatrix('datos.xlsx','Sheet','Hoja1','Range','A2:A62');
PHI2 = readmatrix('datos.xlsx','Sheet','Hoja1','Range','B2:B62');

% Construir la matriz (Phi) y el vector (y)
P1 = PHI2;
P1(end,:) = [];
P2 = PHI2;
P2(end,:) = [];
P2(end,:) = [];
P2 = [0; P2];
P3 = PHI1;
P3(end,:) = [];
P4 = PHI1;
P4(end,:) = [];
P4(end,:) = [];
P4 = [0; P4];
PHI = [P1 P2 P3 P4];
y = PHI2;
y(1,:) = [];

% Obtener las constantes a0, a1, b0, b1
R = (transpose(PHI)*PHI)\transpose(PHI)*y;
a0 = R(1);
a1 = R(2);
b0 = R(3);
b1 = R(4);

% Graficar los datos y ambos modelos
X = linspace(0,60,61);
T = linspace(0,3.0,61);

% Puntos de las entradas experimentales
plot(T, PHI2, '+', 'MarkerSize', 6, 'color', 'r');
hold on

% Grafica del primer modelo (4 constantes)
U = [0 b0 b1];
Y = [1 a0 a1];
yfilter1 = filter(U, Y, X).';
plot(T, yfilter1, 'LineWidth',2 , 'color', '#77AC30');

% Grafica del segundo modelo (3 constantes)
Y = [1 a0 a1];
U = [0 b0 0];
yfilter2 = filter(U, Y, X).';
plot(T, yfilter2, 'LineWidth',2 , 'color', '#0072BD');

pf1 = polyfit(T, PHI2, 1);
pf2 = polyfit(T, PHI2, 2);
pv1 = transpose(polyval(pf1, T));
pv2 = transpose(polyval(pf2, T));
plot(T, pv1, '--', 'LineWidth',2 , 'color', '#D95319');
plot(T, pv2, '--', 'LineWidth',2 , 'color', '#7E2F8E');

title('Datos Experimentales vs Modelos Minimos Cuadrados')
xlabel('Tiempo en s (Ts = 0.05s)') 
ylabel('Salidas (y(k))')
legend({'Datos Experimentales','y(k)=a0y(k-1)+a1y(k-2)=b0u(k-1)+b1u(k-2)',  'y(k)=a0y(k-1)+a1y(k-2)=b0u(k-1)', 'y(k)=0.2538k+0.1515 (Polyfit)', 'y(k)=-0.1145^2+0.5973k-0.0173 (Polyfit)' },'Location','northwest')

disp('     k        y(k)    Modelo 1   Modelo 2  PF Lineal PF Cuadrada')
disp('     -------------------------------------------------------')
T = [X' PHI2 yfilter1 yfilter2 pv1 pv2];
disp(T)


