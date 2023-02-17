function [v] = sinVect(frequency,F_s,length)
l = length * F_s;
v = linspace(0, length, l);

for i = 1:l
    v(i) = sin(frequency * v(i));
end

%fs = 44100; % Sampling frequency (samples per second)
%dt = 1/fs; % seconds per sample
%StopTime = 6; % seconds
%t = (0:dt:StopTime)'; % seconds
%F = 5000; % Sine wave frequency (hertz)
%data = sin(2*pi*F*t);
