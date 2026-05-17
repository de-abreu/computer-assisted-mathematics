% Generating matrix A
[i, j] = ndgrid(1:4);

A = (i .* j) ./ (i + j - 1)

% Generating matrix B
[i, j] = ndgrid(1:4, 1:5);
B = zeros(4:5);

B(i == j) = 3;
B(abs(i - j) == 2) = -3;
B(i + j == 3) = 1
