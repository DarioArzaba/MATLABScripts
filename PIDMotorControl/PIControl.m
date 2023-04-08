a = arduino ('COM12', 'Mega2560', 'Libraries', 'RotaryEncoder');
pinControlPWM = "D9";
pinDireccionMotor1 = "D5"; 
pinDireccionMotor2 = "D6";
pinOutputAEncoder = "D2";
pinOutputBEncoder = "D3";
pulsosPorVuelta = 2000;
clear encoder
encoder= rotaryEncoder(a, pinOutputAEncoder, pinOutputBEncoder, pulsosPorVuelta);
writeDigitalPin(a, pinControlPWM ,0.9);
writeDigitalPin(a, pinDireccionMotor1,0);
writeDigitalPin(a, pinDireccionMotor2,1);
tic
indiceDeMediciones = 1;
referencia = 20;
errorPasado = 0;
control = 0.1;
integracionError = 0;
integracionPasada = 0;
tiempoPasado = 0;

KP = 0.1;
KD = 0.0;
KI = 0.1;

while toc < 15
    tiempo(indiceDeMediciones) = toc;
    velocidad(indiceDeMediciones) = readSpeed(encoder);
    error = (referencia - velocidad(indiceDeMediciones));
	unidadTiempo = tiempo(indiceDeMediciones) - tiempoPasado;
	integracionError = integracionPasada + (unidadTiempo * (error + errorPasado) / 2);

	% Controlador PI (KD = 0)
	control = (error * KP) + (integracionError * KI) + (KD * (error - errorPasado) / unidadTiempo);

    if control > 1
       control = 1;
	   integracionError = integracionPasada; %Posiblemente quitar si no cambia el error
    end
    indiceDeMediciones = indiceDeMediciones + 1;
    writePWMDutyCycle(a, pinControlPWM, control);
	tiempoPasado = tiempo(indiceDeMediciones);
	integracionPasada = integracionError;
	errorPasado = error;
end

writePWMDutyCycle(a, pinControlPWM, 0);
plot(tiempo, velocidad);
grid
title 'Velocidad de Motor'
xlabel 'Tiempo'
ylabel 'Velocidad'