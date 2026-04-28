% Iterative method, set to find a root closest to 1 with a precision of 10^(-10)
options=optimset('Tolx', 1e-10);
[x, fval, exitflag, output]= fzero(@eqtrans, 1, options);
x
iter = output.iterations

% Run a visual inspection to validate the result
run('visual_insp.m');
