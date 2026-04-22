% 2x⁵ -3⁴ + 3² - 10x - 8 = 0 ∈ C
a = [2 -3 3 -10 -8];
disp("Solution to item a: "), roots(a)

% 2x + √(1 - x²) + 1 = x² + 3x + 2
% => x² + x + 1 =  √(1 - x²)
% => [x(x + 1)  +1]² = 1 - x²
% => x²(x + 1)² = 1 - x²
% => x²(x² + 2x + 1) + 2x(x + 1) + 1 = 1 - x²
% => x⁴ + 2x³ + 4x² + 2x = 0
b = [1 2 4 2 0];
r = roots(b);
real_roots = r(abs(imag(r)) < 1e-10);
disp('Solution to item b (real roots only): '), disp(real_roots)
