graphics_toolkit('qt');

theta = linspace(0, 2*pi, 50);

% Three sections with different radii (vase shape)
% Section 1: bottom (wider base)
z1 = linspace(0, 1, 20);
r1 = 1.5;

% Section 2: middle (narrower neck)
z2 = linspace(1, 2, 20);
r2 = 0.8;

% Section 3: top (widening blob)
z3 = linspace(2, 3, 20);
r3 = linspace(0.8, 1.8, 20);

% Combine sections
z = [z1, z2, z3];
r = [repmat(r1, 1, 20), repmat(r2, 1, 20), r3];

% Create meshgrid
[TH, Z] = meshgrid(theta, z);
R = repmat(r, length(theta), 1)';

X = R .* cos(TH);
Y = R .* sin(TH);

surf(X, Y, Z, 'EdgeColor', 'interp');
colormap(parula);
shading interp;
axis equal;
title('Vase Cylinder - Drag to rotate');
xlabel('X'); ylabel('Y'); zlabel('Z');
view(30, 20);

printf('Interactive 3D window opened. Drag to rotate, scroll to zoom. Close window to exit.\n');
waitfor(gcf);