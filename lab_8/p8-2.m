addpath("./p8-1")

time = 0:6;
speed = [ 15, 30, 75, 60, 60, 40, 55 ];
vx = [ 0.5, 3.2, 5.7 ];

disp("Estimation using linear interpolation:")
vy = interp1(time, speed ,vx, "linear")

disp("Estimation using Lagrange interpolation:")
vy = lagrange(time, speed, vx)

disp("Estimation using piecewise cubic Hermite interpolation:")
vy = interp1(time, speed, vx, "pchip")

disp("Estimation using spline interpolation:")
vy = interp1(time, speed, vx, "spline")

disp("Estimation using parabolic regression:")
f = polyfit(time, speed, 2);
vy = polyval(f, vx)

disp("Estimation using 5th order LSM:")
f = polyfit(time, speed, 5);
vy = polyval(f, vx)
