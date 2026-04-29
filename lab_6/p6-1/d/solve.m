% Define search interval
a = -5;
b = 5;

% Calculate midpoint
mid = (a + b) / 2;

% Set precision
options = optimset('Tolx', 1e-6);

% Find root near midpoint
[x, fval, exitflag, output] = fzero(@eqtrans, mid, options);

% Check if solution is in range
if exitflag > 0
    fprintf('Solution x = %.6f is in range [%.1f, %.1f]\n', x, a, b);
    disp(['Root: x = ', num2str(x)]);
    disp(['Iterations: ', num2str(output.iterations)]);
else
    fprintf('Solution x = %.6f is outside range [%.1f, %.1f]\n', x, a, b);
end

% Run visual inspection with interval
visual_insp(a, b);
