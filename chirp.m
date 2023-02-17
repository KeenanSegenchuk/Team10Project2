function [v] = chirp(frequency, F_s, length)

l = F_s * length;
v = linspace(0, length, l);
f = linspace(0, frequency, l);
for i = 1:l
    v(i) = sin(f(i)*v(i));
end

%f_in = linspace(f_in_start, f_in_end, length(t));
%phase_in = cumsum(f_in/fs);
%y = sin(2*pi*phase_in);
