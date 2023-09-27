%DelRosario 3.7

x1 = rand(1, 11); 
x2 = rand(1, 11);
n = 0:10;

alpha = 2;
beta = 3;

k = 0:500;
w = (pi/500) * k;

X1 = x1 * (exp(-1j * pi/500)).^(n' * k); % DTFT of x1
X2 = x2 * (exp(-1j * pi/500)).^(n' * k); % DTFT of x2

x = alpha * x1 + beta * x2;

X = x * (exp(-1j * pi/500)).^(n' * k); % DTFT of x

X_check = alpha * X1 + beta * X2; % Linear combination of X1 & X2
error = max(abs(X - X_check)); % Calculate the maximum absolute error

% Display the error, which should be very close to zero
disp(['Maximum absolute error: ', num2str(error)]);
