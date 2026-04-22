clc
clear all

pkg load symbolic

syms x y z
A = [-6 * x, 8 * y, -z; 2 * x, 0 * y, -3 * z];
b = [-5; 7];

disp('Matrix A:');
disp(A);
disp('Vector b:');
disp(b);

r = rank(A);
r_aug = rank([A b]);

if r ~= r_aug
  disp('System type: INCOMPATIBLE (no solution)');
else
  [m, n] = size(A);
  disp(['Size: ', num2str(m), ' x ', num2str(n)]);

  X = pinv(A) * b;
  disp('Solution X = pinv(A)*b:');
  disp(simplify(X));

  % Verification: Check if A*X equals b
  b_check = A * X;
  disp('Verification A*X:');
  disp(simplify(b_check));

  residual = norm(b_check - b);
  disp('Residual norm ||A*X - b||:');
  disp(simplify(residual));
  disp(' ')
end
