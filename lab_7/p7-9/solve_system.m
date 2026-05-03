v0 = [0.6, -0.2, -0.1];
[vmin, fmin, exitflag, output] = fminsearch(@func, v0);
printf('Minimum point [%g %g %g]\n', vmin)
printf('Minimum: %g\n', fmin)
printf('Optimization method: %s\n', output.algorithm)
