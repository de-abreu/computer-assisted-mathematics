x = linspace(-6, 6, 500);
plot(x, func(x))
grid on
title('Click near extreme points, press Enter when done')

g = @(x) -func(x);

[xs, ~] = ginput();
window = 0.5;

for i = 1:length(xs)
  a = max(-6, xs(i) - window);
  b = min(6, xs(i) + window);

  [xmin, fmin] = fminbnd(@func, a, b);
  [xmax, fmax_neg] = fminbnd(g, a, b);

  if abs(xmin - xs(i)) < abs(xmax - xs(i))
    printf('Minimum at x = %g, f(x) = %g\n', xmin, fmin)
  else
    printf('Maximum at x = %g, f(x) = %g\n', xmax, -fmax_neg)
  end
end
