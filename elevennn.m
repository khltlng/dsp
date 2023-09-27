% Del Rosario 3.11
n = -5:10;
x = rand(1, length(n));

k = -100:100;
w = (pi / 100) * k;

X = x * (exp(-1j * pi / 100)).^(n' * k); % DTFT of x

y = fliplr(x);
m = -fliplr(n); % Signal folding

Y = y * (exp(-1j * pi / 100)).^(m' * k); % DTFT of y

Y_check = fliplr(X); % X(-w)

error = max(abs(Y - Y_check)); % Difference

% Display the error (should be close to 0)
error
