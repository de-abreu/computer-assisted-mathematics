% Find all roots in interval [3.1, 5] with precision 1e-6
options = optimset('Tolx', 1e-6);

[x, fval, exitflag, output] = fzero(@eqtrans, 4, options);

x
inter = output.iterations
% Check if solution is in desired range
if x >= 3.1 && x <= 5
    fprintf('Root %d: x = %.6f (in range [3.1, 5])\n', i, x);
else
    fprintf('Root %d: x = %.6f (outside range [3.1, 5])\n', i, x);
end

run('visual_insp.m')
