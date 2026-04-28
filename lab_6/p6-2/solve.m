% Find two solutions starting from 0 with precision 1e-6
options = optimset('Tolx', 1e-6);

% Run visual inspection first
run('visual_insp.m');

% Find first solution starting from 0
[x1, fval1, exitflag1, output1] = fzero(@eqtrans, 0, options);

% Find second solution - use a different starting point
% Based on periodicity, try pi or -pi
[x2, fval2, exitflag2, output2] = fzero(@eqtrans, pi, options);

disp(['Solution 1: x = ', num2str(x1)]);
disp(['Iterations: ', num2str(output1.iterations)]);
disp(['Solution 2: x = ', num2str(x2)]);
disp(['Iterations: ', num2str(output2.iterations)]);
