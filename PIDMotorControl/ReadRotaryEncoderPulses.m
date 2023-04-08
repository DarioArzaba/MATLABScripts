a = arduino ('COM12', 'Mega2560', 'Libraries', 'RotaryEncoder');

pinControlPWM = "D9";
pinDireccionMotor1 = "D5"; 
pinDireccionMotor2 = "D6";
pinOutputAEncoder = "D2";
pinOutputBEncoder = "D3";

configurePin(a, pinControlPWM, 'PWM')
configurePin(a, pinDireccionMotor1, 'DigitalOutput')
configurePin(a, pinDireccionMotor2, 'DigitalOutput')

writePWMDutyCycle(a, pinControlPWM,1);
writeDigitalPin(a, pinDireccionMotor1,0);
writeDigitalPin(a, pinDireccionMotor2,1);

encoder= rotaryEncoder(a, pinOutputAEncoder, pinOutputBEncoder);
[count,time] = readCount(encoder);
pulsosPorVuelta = 2000; % Pulsos requeridos para una revolucion completa del encoder (default 180)

clear encoder
encoder= rotaryEncoder(a, pinOutputAEncoder, pinOutputBEncoder, pulsosPorVuelta);

