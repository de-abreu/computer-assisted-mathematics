% Test script for Jacobi and Gauss-Seidel methods

fprintf('========================================\n');
fprintf('System 1:\n');
fprintf('  2x - 12y + z = -25\n');
fprintf('  11x + 4y + 3z = 0\n');
fprintf('  3x - y + 9z = 4\n');
fprintf('========================================\n');

A1 = [2, -12, 1; 11, 4, 3; 3, -1, 9];
b1 = [-25; 0; 4];

[x_j1, it_j1] = jacobi(A1, b1);
[x_g1, it_g1] = gaussSeidel(A1, b1);

fprintf('\nJacobi solution:\n');
fprintf('  x = %.6f\n', x_j1(1));
fprintf('  y = %.6f\n', x_j1(2));
fprintf('  z = %.6f\n', x_j1(3));
fprintf('  Iterations: %d\n', it_j1);

fprintf('\nGauss-Seidel solution:\n');
fprintf('  x = %.6f\n', x_g1(1));
fprintf('  y = %.6f\n', x_g1(2));
fprintf('  z = %.6f\n', x_g1(3));
fprintf('  Iterations: %d\n', it_g1);

fprintf('\n========================================\n');
fprintf('System 2:\n');
fprintf('  2x + 5y + z = -2\n');
fprintf('  5x + 2y + z = 4\n');
fprintf('  x + y + 5z = 5\n');
fprintf('========================================\n');

A2 = [2, 5, 1; 5, 2, 1; 1, 1, 5];
b2 = [-2; 4; 5];

[x_j2, it_j2] = jacobi(A2, b2);
[x_g2, it_g2] = gaussSeidel(A2, b2);

fprintf('\nJacobi solution:\n');
fprintf('  x = %.6f\n', x_j2(1));
fprintf('  y = %.6f\n', x_j2(2));
fprintf('  z = %.6f\n', x_j2(3));
fprintf('  Iterations: %d\n', it_j2);

fprintf('\nGauss-Seidel solution:\n');
fprintf('  x = %.6f\n', x_g2(1));
fprintf('  y = %.6f\n', x_g2(2));
fprintf('  z = %.6f\n', x_g2(3));
fprintf('  Iterations: %d\n', it_g2);

fprintf('\n========================================\n');
fprintf('System 3:\n');
fprintf('  5x + y + z = 10\n');
fprintf('  x + 6y + 4z = 4\n');
fprintf('  x + y + 10z = -7\n');
fprintf('========================================\n');

A3 = [5, 1, 1; 1, 6, 4; 1, 1, 10];
b3 = [10; 4; -7];

[x_j3, it_j3] = jacobi(A3, b3);
[x_g3, it_g3] = gaussSeidel(A3, b3);

fprintf('\nJacobi solution:\n');
fprintf('  x = %.6f\n', x_j3(1));
fprintf('  y = %.6f\n', x_j3(2));
fprintf('  z = %.6f\n', x_j3(3));
fprintf('  Iterations: %d\n', it_j3);

fprintf('\nGauss-Seidel solution:\n');
fprintf('  x = %.6f\n', x_g3(1));
fprintf('  y = %.6f\n', x_g3(2));
fprintf('  z = %.6f\n', x_g3(3));
fprintf('  Iterations: %d\n', it_g3);