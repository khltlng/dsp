% Del Rosario- 3.8
x = rand(1, 11);
n = 0:10;

k = 0:500;
w = (pi/500) * k;

X = x * (exp(-1j * pi/500)).^(n' * k); % DTFT of x

y = x;
m = n + 2;

Y = y * (exp(-1j * pi/500)).^(m' * k); % DTFT of y

Y_check = (exp(-1j * 2 * w)) .* X; % Multiplication by exp(-j2w)
error = max(abs(Y - Y_check)); % Calculate the maximum absolute error

% Display the error, which should be very close to zero
disp(['Maximum absolute error: ', num2str(error)]);
