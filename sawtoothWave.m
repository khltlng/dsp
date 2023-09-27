%Laguerder, Keefe Gareth B.
%DSP
%14/8/2023

function sawtoothWave(t, A, f)
% A = (1/2)-(1/pi);
% t = 0:0.01:5;
% f = 2;
N = 10000;
fx = 0;

for n = 1:N
    fx = fx + A * (1/n) * sin(2*pi*n*f*t);
end

plot(t,fx);