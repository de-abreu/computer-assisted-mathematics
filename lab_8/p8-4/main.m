time = 0:6;
speed = [ 15, 30, 75, 60, 60, 40, 55 ];
vx = [ 0.5, 3.2, 5.7 ];

[vl, vc] = interpolation(time, speed, vx);

disp("Linear interpolation:")
vl
disp("Cubic interpolation:")
vc