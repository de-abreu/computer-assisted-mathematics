[xmin, fmin, exitflag, output] = fminsearch(@func, 0.5);
printf('x: %g\n', xmin)
printf('f(x): %g\n', fmin)
disp(output)
