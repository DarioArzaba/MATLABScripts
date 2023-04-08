format long g
MatrizConEcuacionesBien = [((j*2*pi*90*425e-3)+(j*2*pi*90*700e-3)+350+(1/(j*2*pi*90*7e-6))),(0),(-(1/(j*2*pi*90*7e-6)));(0),((1/(j*2*pi*90*5e-6))+240+550),(-240);(-(1/(j*2*pi*90*7e-6))),(-240),((1/(j*2*pi*90*7e-6))+240)];
MatrizConEcuacionesBienResultados = [(0);(0);(-(15*exp(j*(200)*pi/180)))];
CorrienteMatrizMalla = MatrizConEcuacionesBien\MatrizConEcuacionesBienResultados;
PrimeraCorriente = CorrienteMatrizMalla(1,:)
SegundaCorriente = CorrienteMatrizMalla(2,:)
TercerCorriente = CorrienteMatrizMalla(3,:)
VoltajeEnR1 = 550*SegundaCorriente; VoltajeEnC2 = (1/(j*2*pi*90*5e-6)) * SegundaCorriente; VoltajeEnC1 = 0; VoltajeEnL3 = (j*2*pi*90*700e-3) * PrimeraCorriente; VoltajeEnR3 = 350 * PrimeraCorriente; 
VolajeDeThevenin = - VoltajeEnR1 - VoltajeEnC2 - VoltajeEnC1 - VoltajeEnL3 - VoltajeEnR3 - (15 * exp(j*(200)*pi/180))
MagnitudDelVoltajeDeThevenin = abs(VolajeDeThevenin)
AnguloDelVoltajeDeThevenin = rad2deg(arg(VolajeDeThevenin))+180
NuevaResistencia1 = (j*2*pi*90*700e-3)+350;
NuevaResistencia2 = (1/(j*2*pi*90*5e-6))+550;
NuevaResistencia3 = (NuevaResistencia2*240)/(NuevaResistencia2+240);
NuevaResistencia4 = (NuevaResistencia3*(1/(j*2*pi*90*7e-6)))/(NuevaResistencia3+(1/(j*2*pi*90*7e-6)));
NuevaResistencia5 = NuevaResistencia4+NuevaResistencia1;
NuevaResistencia6 = (NuevaResistencia5*(j*2*pi*90*425e-3))/(NuevaResistencia5+(j*2*pi*90*425e-3));
ResistenciaDeThevenin = NuevaResistencia6+(1/(j*2*pi*90*6e-6))

