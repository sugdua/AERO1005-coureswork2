% Liyu MA
% ssylm3@nottingham.edu.cn
% AERO1005 Coursework 2

%% PRELIMINARY TASK - ARDUINO AND GIT INSTALLATION [5 MARKS]
clear a
% Auto-detect Arduino port (works on both Mac and Windows)
ports = serialportlist("available");
% Filter: on Mac look for usbserial, on Windows look for COM
arduino_port = "";
for p = ports
    if contains(p, "usbserial") || contains(p, "COM")
        arduino_port = p;
        break;
    end
end
if arduino_port == ""
    error('No Arduino found. Check USB connection.');
end
a = arduino(arduino_port, 'Uno');

% Test single LED on digital pin D10
writeDigitalPin(a, 'D10', 1);

% LED Blink Test - Blink LED at 0.5s intervals (0.5s ON, 0.5s OFF)
for i = 1:10
    writeDigitalPin(a, 'D10', 1);  % Turn LED ON
    pause(0.5);                      % Wait 0.5 seconds
    writeDigitalPin(a, 'D10', 0);  % Turn LED OFF
    pause(0.5);                      % Wait 0.5 seconds
end
%% TASK 1 - READ TEMPERATURE DATA, PLOT, AND WRITE TO A LOG FILE [20 MARKS]










%% TASK 2 - LED TEMPERATURE MONITORING DEVICE IMPLEMENTATION [25 MARKS]







%% TASK 3 - ALGORITHMS - TEMPERATURE PREDICTION [30 MARKS]









%% TASK 4 - REFLECTIVE STATEMENT [5 MARKS]
