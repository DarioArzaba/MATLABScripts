a = arduino ('COM12', 'Mega2560', 'Libraries', 'RotaryEncoder');

pinControlPWM = "D9";
pinDireccionMotor1 = "D5"; 
pinDireccionMotor2 = "D6";

configurePin(a, pinControlPWM, 'PWM')
configurePin(a, pinDireccionMotor1, 'DigitalOutput')
configurePin(a, pinDireccionMotor2, 'DigitalOutput')

writePWMDutyCycle(a, pinControlPWM,1);
writeDigitalPin(a, pinDireccionMotor1,0);
writeDigitalPin(a, pinDireccionMotor2,1);

