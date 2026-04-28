% Iterative method, set to find a root closest to -3 with a precision of 1e-6
options = optimset('Tolx', 1e-6);
[x, fval, exitflag, output] = fzero(@eqtrans, -3, options);
x
iter = output.iterations

% Run a visual inspection to validate the result
run('visual_insp.m');
