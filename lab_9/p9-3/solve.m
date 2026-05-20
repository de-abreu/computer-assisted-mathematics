colors = [
  0.000 0.318 0.573;
  0.902 0.412 0.004;
  0.000 0.616 0.322;
  0.510 0.302 0.537
];

hold on

figure;
dom = [-1, 5]; y0 = 2;
[x, y] = ode45(@a, dom, y0);
plot(x, y, 'Color', colors(1,:), 'LineWidth', 1.5);

figure;
dom = [0, 6]; y0 = [-1; 2];
[x, y] = ode45(@b, dom, y0);
plot(x, y(:,1), 'Color', colors(2,:), 'LineWidth', 1.5);

figure;
dom = [1, 4]; y0 = [0.5; -0.5; 0.3];
[x, y] = ode45(@c, dom, y0);
plot(x, y(:,1), 'Color', colors(3,:), 'LineWidth', 1.5);

figure;
dom = [0, 3]; y0 = [0; 0.2; -0.1];
[x, y] = ode45(@d, dom, y0);
plot(x, y(:,1), 'Color', colors(4,:), 'LineWidth', 1.5);

hold off
legend('a', 'b', 'c', 'd');
xlabel('x');
ylabel('y');
