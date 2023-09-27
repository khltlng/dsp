% 
n = -5:10;
x = rand(1, length(n)) + 1j * rand(1, length(n));

k = -100:100;
w = (pi / 100) * k;

X = x * (exp(-1j * pi / 100)).^(n' * k); % DTFT of x

y = conj(x); % Signal conjugation

Y = y * (exp(-1j * pi / 100)).^(n' * k); % DTFT of y

Y_check = conj(fliplr(X)); % Conjugation of X(-w)

error = max(abs(Y - Y_check)); % Difference

% Display the error (should be close to 0)
error
