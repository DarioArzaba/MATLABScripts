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

KP = 1; % El problema pide usar 3 valores, podrian ser 1 (inicial) despues 0.8, 0.3 y 0.1

while toc < 15
    tiempo(indiceDeMediciones) = toc;
    velocidad(indiceDeMediciones) = readSpeed(encoder);
    error = (referencia - velocidad(indiceDeMediciones));
    control = (error * KP); % Controlador Proporcional (P)
    if control > 1
       control = 1;
    end
    indiceDeMediciones = indiceDeMediciones + 1;
    writePWMDutyCycle(a, pinControlPWM, control);
end

writePWMDutyCycle(a, pinControlPWM, 0);
plot(tiempo, velocidad);
grid
title 'Velocidad de Motor'
xlabel 'Tiempo'
ylabel 'Velocidad'