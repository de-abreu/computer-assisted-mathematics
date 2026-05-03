% Octave uses BFGS Quasi-Newton with a line search (Dong & Wolf step selection) as its default (and only) algorithm for minimization. Luckly, that is the same as MATLAB's when LargeScale is set to 'off'.

v0 = [1, 0];
[vmin, fmin, exitflag, output] = fminunc(@func, v0);
printf('Minimum point [%g %g]\n', vmin)
printf('Minimum: %g\n', fmin)
printf('Iterations: %d\n', output.iterations)
