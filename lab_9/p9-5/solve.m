mass = [10, 4.15, 0.5];
initial_coord = [0, 2, 1, -1, -0.5, 0];
interval = [0, 3];
gravity = 9.80665;

[time, coord] = ode45(@(t, q) func(t, q, mass, gravity), interval, initial_coord);

% Plot 1: 3D configuration-space trajectory with color gradient
figure;
q1 = coord(:, 1);
q2 = coord(:, 3);
q3 = coord(:, 5);
surface([q1 q1], [q2 q2], [q3 q3], [time time], ...
    'EdgeColor', 'interp', 'FaceColor', 'none', 'LineWidth', 1.5);
xlabel('q_1'); ylabel('q_2'); zlabel('q_3');
title('Configuration-space trajectory (color = time)');
colorbar; grid on;
view(45, 30);

% Plot 2: Subplots of each coordinate over time
figure;
subplot(3, 1, 1);
plot(time, coord(:, 1), 'b', 'LineWidth', 1.2);
ylabel('q_1'); title('Coordinates over time'); grid on;

subplot(3, 1, 2);
plot(time, coord(:, 3), 'r', 'LineWidth', 1.2);
ylabel('q_2'); grid on;

subplot(3, 1, 3);
plot(time, coord(:, 5), 'g', 'LineWidth', 1.2);
ylabel('q_3'); xlabel('t'); grid on;
