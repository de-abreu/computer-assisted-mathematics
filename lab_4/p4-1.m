A = [4, 3, -1; -1, 1, 1; 1, 0, 3];
b = [2; 0; -1];

if det(A) != 0
  x = inv(A) * b;
  Ax = A * x;
  fprintf('\n%10s %10s %10s\n', 'x', 'b', 'Ax');
  fprintf('--------------------------------\n');
  for i = 1:3
    fprintf('%10.6f %10.6f %10.6f\n', x(i), b(i), Ax(i));
  endfor
else
  disp('The system is not compatible and determined.')
endif
