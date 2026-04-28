% Visual inspection of the equation roots
x = -2*pi:0.05:2*pi;

% Left side: e^{cos(x)}
lhs = exp(cos(x));

% Right side: sin(x) + 1
rhs = sin(x) + 1;

plot(x, lhs, 'b-', x, rhs, 'r--');
legend('e^{cos(x)}', 'sin(x) + 1');
grid on;
title('Graphical location of roots');
xlabel('x');
ylabel('y');
