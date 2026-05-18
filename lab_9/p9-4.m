scriptdir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptdir, 'p9-3'));

printf("\nEquation a)\n")
dom = [-1, 5]; y0 = 2;
points = [-1; -0.5; 0; 1; 2.3];
[x, y] = ode45(@a, dom, y0);
result = interp1(x, y, points);
disp("    x          y");
disp([points, result]);

printf("\nEquation b)\n")
dom = [0, 6]; y0 = [-1; 2];
points = [0; 1.5; 2.3; 3.7; 4; 5.45; 6];
[x, y] = ode45(@b, dom, y0);
result = interp1(x, y, points);
disp("    x          y             y'");
disp([points, result]);

printf("\nEquation c)\n")
dom = [1, 4]; y0 = [0.5; -0.5; 0.3];
points = [1; 2.2; 3.5; 4];
[x, y] = ode45(@c, dom, y0);
result = interp1(x, y, points);
disp("    x         y          y'         y''");
disp([points, result]);

printf("\nSystem of equations d)\n")
dom = [0, 3]; y0 = [0; 0.2; -0.1];
points = [0; 0.75; 1.1; 1.16; 2; 3];
[x, y] = ode45(@d, dom, y0);
result = interp1(x, y, points);
disp("   t        x          y          z");
disp([points, result]);
