function [v] = fivetone(f1, f2, f3, f4, f5, F_s, length)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
l = F_s * length;
v = linspace(0, length, l);
p1 = .2;
p2 = .4;
p3 = .6;
p4 = .8;
p5 = 1.0;
c = 0;
for i = 1:l
    c = c + 1;
    if c < p1*F_s
        v(i) = sin(f1 * v(i));
    elseif c < p2*F_s
        v(i) = sin(f2 * v(i));
    elseif c < p3*F_s
        v(i) = sin(f3 * v(i));
    elseif c < p4*F_s
        v(i) = sin(f4 * v(i));
    elseif c < p5*F_s
        v(i) = sin(f5 * v(i));
    else
        c = 0;
        v(i) = sin(f5 * v(i));
    end

end