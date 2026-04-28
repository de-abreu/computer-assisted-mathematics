% Visual inspection of the equation roots in [3.1, 5]
x = 3.1:0.05:5;

% Left side: 2^(-sin(x)) + 4
lhs = 2.^(-sin(x)) + 4;

% Right side: x * ln(x)
rhs = x .* log(x);

% Plot both
plot(x, lhs, 'b-', x, rhs, 'r--');
legend('2^{-sin(x)} + 4', 'x * ln(x)');
grid on;
ylim([0, 8]);
title('Graphical location of roots in [3.1, 5]');
xlabel('x');
ylabel('y');
