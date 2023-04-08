% Variables simbolicas (sin valor numerico)
syms phi theta Psi

% Datos proporcionados para los angulos de las articulaciones (q1 a q6)
% Podemos cambiar estos valores para obtener una nueva posicion de la brida
q1 = -90; 
q2 = -90;
q3 = -90; 
q4 = -90;
q5 = 90;
q6 = 0;

% Datos asignados de la tabla de parametros D-H para UR10e
d1 = 180.7; 
a2 = -612.7;
a3 = -571.55;
d4 = 174.15;
d5 = 119.85; 
d6 = 116.55;

% Matrices de transferencia de las 6 articulaciones
T1 = [cosd(q1) 0 sind(q1) 0; sind(q1) 0 -cosd(q1) 0; 0 1 0 d1; 0 0 0 1];
T2 = [cosd(q2) -sind(q2) 0 a2*cosd(q2); sind(q2) cosd(q2) 0 a2*sind(q2); 0 0 1 0; 0 0 0 1];
T3 = [cosd(q3) -sind(q3) 0 a3*cosd(q3); sind(q3) cosd(q3) 0 a3*sind(q3); 0 0 1 0; 0 0 0 1];
T4 = [cosd(q4) 0 sind(q4) 0; sind(q4) 0 -cosd(q4) 0; 0 1 0 d4; 0 0 0 1];
T5 = [cosd(q5) 0 -sind(q5) 0; sind(q5) 0 cosd(q5) 0; 0 -1 0 d5; 0 0 0 1];
T6 = [cosd(q6) -sind(q6) 0 0; sind(q6) cosd(q6) 0 0; 0 0 1 d6; 0 0 0 1];

% Matriz de transferencia de la brida
T = T1 * T2 * T3 * T4 * T5 * T6;

% Obtener posiciones de el vector de resultados de la matriz de
% transferencia de la brida
PosicionActualX = T(1,4);
PosicionActualY = T(2,4);
PosicionActualZ = T(3,4);

% Mensaje de texto con el resultado final
disp(['Posicion de la brida en X es:', num2str(PosicionActualX)])
disp(['Posicion de la brida en Y es:', num2str(PosicionActualY)])
disp(['Posicion de la brida en Z es:', num2str(PosicionActualZ)])