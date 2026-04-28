% Visual inspection of the equation roots
x = -5:0.05:5;

% Left side: exponential decay
lhs = exp(-x.^3);

% Right side: logarithmic
rhs = log(1 - x + x.^2/3);

% Plot both
plot(x, lhs, 'b-', x, rhs, 'r--');
legend('e^{-x^3}', 'ln(1 - x + x^2/3)');
grid on;
ylim([-2, 5]);
title('Graphical location of roots');
xlabel('x');
ylabel('y');
