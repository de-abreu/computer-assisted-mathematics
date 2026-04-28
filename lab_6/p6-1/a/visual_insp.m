% Visual inspection of the equation roots
x = -3:0.05:3;

% Left side: parabola
lhs = x.^2 - 3;

% Right side: transcendental
rhs = sin(x) + sqrt(abs(x));

% Plot both
plot(x, lhs, 'b-', x, rhs, 'r--');
legend('x^2 - 3', 'sin(x) + sqrt(|x|)');
grid on;
ylim([-4, 4]);
title('Graphical location of roots');
xlabel('x');
ylabel('y');
