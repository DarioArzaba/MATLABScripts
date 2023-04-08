a = arduino ('COM12', 'Mega2560', 'Libraries', 'RotaryEncoder');

pinControlPWM = "D9";
pinDireccionMotor1 = "D5"; 
pinDireccionMotor2 = "D6";
pinOutputAEncoder = "D2";
pinOutputBEncoder = "D3";

configurePin(a, pinControlPWM, 'PWM')
configurePin(a, pinDireccionMotor1, 'DigitalOutput')
configurePin(a, pinDireccionMotor2, 'DigitalOutput')

% writePWMDutyCycle(a, pinControlPWM,1);
% writeDigitalPin(a, pinDireccionMotor1,0);
% writeDigitalPin(a, pinDireccionMotor2,1);
% encoder= rotaryEncoder(a, pinOutputAEncoder, pinOutputBEncoder);
% [count,time] = readCount(encoder);

pulsosPorVuelta = 2000;
referencia = 1;

clear encoder
encoder= rotaryEncoder(a, pinOutputAEncoder, pinOutputBEncoder, pulsosPorVuelta);

% Iniciar Giro del Motor
writeDigitalPin(a, pinControlPWM, referencia);
writeDigitalPin(a, pinDireccionMotor1,0);
writeDigitalPin(a, pinDireccionMotor2,1);

% Iniciar contador de tiempo y Array de mediciones
tic
indiceDeMediciones = 1;

while toc < 15
    tiempo(indiceDeMediciones) = toc;
    velocidad(indiceDeMediciones) = readSpeed(encoder);
    indiceDeMediciones = indiceDeMediciones + 1;
	control = referencia;
    writePWMDutyCycle(a, pinControlPWM, control);
end

% Apagar el motor y mostrar resultados de mediciones
% Medicion de la velocidad maxima del motor PWM = 1
writePWMDutyCycle(a, pinControlPWM, 0);
plot(tiempo, velocidad);
grid
title 'Velocidad de Motor'
xlabel 'Tiempo'
ylabel 'Velocidad'