a = [2, 3, 0];
A = [a; -5, 0, 8];
b = [4, -3, 1];
B = [b; -1, 0, 5];

disp("-- Matrix operations --")

disp("Addition")
A + B

disp("Subtraction")
A - B

disp("Multiplication (Matrix A with the transpose of B)")
A * B'

disp("Division")
A / B

disp("Left division")
A \ B

disp("Exponentiation (First two columns of matrix A, a square matrix, and a scalar)")
A(:, 1:2) ^ 2

disp("-- Array operations --")

disp("Multiplication")
a .* b

disp("Right division")
a ./ b

disp("Left division")
a .\ b

disp("Exponentiation")
a .^ b

disp("Unconjugated array transpose")
a .'
