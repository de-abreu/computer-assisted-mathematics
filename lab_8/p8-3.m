addpath("./p8-1")

time = 0:6;
speed = [ 15, 30, 75, 60, 60, 40, 55 ];
vx = min(time):(max(time) - min(time)) / 100:max(time);

disp("Estimation using linear interpolation:")
vy = interp1(time, speed ,vx, "linear")

disp("Estimation using Lagrange interpolation:")
vy2 = lagrange(time, speed, vx)

disp("Estimation using piecewise cubic Hermite interpolation:")
vy3 = interp1(time, speed, vx, "pchip")

disp("Estimation using spline interpolation:")
vy4 = interp1(time, speed, vx, "spline")

disp("Estimation using parabolic regression:")
f = polyfit(time, speed, 2);
vy5 = polyval(f, vx)

disp("Estimation using 5th order LSM:")
f = polyfit(time, speed, 5);
vy6 = polyval(f, vx)

plot(time, speed, 'bd')
hold on
plot(vx, vy, 'r', vx, vy2, '--g', vx, vy3, '-.b', vx, vy4, 'm', vx, vy5, 'k-', vx, vy6, 'k:')
axis([min(time)-1 max(time)+1, min([speed vy vy2 vy3 vy4 vy5 vy6])-5 max([speed vy vy2 vy3 vy4 vy5 vy6])+5])
legend('points', 'linear', 'Lagrange', 'pchip', 'spline', 'parabolic regression', '5th order regression')
hold off
