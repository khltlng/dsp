A = 8/pi*pi;
f = 1;
x = 0:0.1:1;
N = 100000;
fx = 0;
for n = 1:2:N
    fx = fx + A * (((-1)^((n-1)/2))/(n*n)) * sin(2*pi*n*f*x);
end
plot(x,fx);