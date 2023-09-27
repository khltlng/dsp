% 3.12
n = -5:10;
x = sin(pi * n / 2);

k = -100:100;
w = (pi / 100) * k;

X = x * (exp(-1j * pi / 100)).^(n' * k); % DTFT of x

[xe, xo, m] = evenodd(x, n);

XE = xe * (exp(-1j * pi / 100)).^(m' * k); % DTFT of even part
XO = xo * (exp(-1j * pi / 100)).^(m' * k); % DTFT of odd part

XR = real(X); % Real part of X
error1 = max(abs(XE - XR)); % Difference for real parts
XI = imag(X); % Imaginary part of X
error2 = max(abs(XO - 1j * XI)); % Difference for imaginary parts

% Display the errors
error1;
error2;

% Plot the results
figure;

subplot(2, 2, 1);
plot(w/pi, XR);
grid;
axis([-1, 1, -2, 2]);
xlabel('Frequency in pi units');
ylabel('Re(X)');
title('Real part of X');

subplot(2, 2, 2);
plot(w/pi, XI);
grid;
axis([-1, 1, -10, 10]);
xlabel('Frequency in pi units');
ylabel('Im(X)');
title('Imaginary part of X');

subplot(2, 2, 3);
plot(w/pi, real(XE));
grid;
axis([-1, 1, -2, 2]);
xlabel('Frequency in pi units');
ylabel('XE');
title('Transform of even part');

subplot(2, 2, 4);
plot(w/pi, imag(XO));
grid;
axis([-1, 1, -10, 10]);
xlabel('Frequency in pi units');
ylabel('XO');
title('Transform of odd part');

