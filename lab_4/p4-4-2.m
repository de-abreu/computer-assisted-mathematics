clc
clear all

pkg load symbolic

A = [-6, 8, -1; 2, -3, 0];
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
  syms z

  Areduced = sym(A(:, [1 2]));
  breduced = [-5 - z; 7];

  s = pinv(Areduced) * breduced;
  disp('Solution X = pinv(Areduced)*breduced:');
  x = s(1)
  y = s(2)
  disp('for z being any real number')
end
