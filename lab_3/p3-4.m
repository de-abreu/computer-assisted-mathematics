## -*- texinfo -*-
## @deftypefn {Script File} {} p3-4
##
## Draw a hexagon centered at origin with radius 2, divided into 6 sectors.
## Each sector is colored based on remainder r = p mod 3.
## Set p before running: p = <positive integer>; p3_4
##
## @end deftypefn

graphics_toolkit('qt');

if !exist('p', 'var') || !isnumeric(p) || p <= 0 || floor(p) != p
  p = 1;
  printf('Using default p = 1\n');
endif

r = mod(p, 3);

base_colors = {'r', 'g', 'b', 'c', 'm', 'y'};

angles = (0:pi/3:2*pi) - pi/6;  # 6 vertices + closing point, rotated 15° clockwise

vertices_x = 2 * cos(angles);
vertices_y = 2 * sin(angles);

figure;
hold on;
axis equal;
axis([-2.5, 2.5, -2.5, 2.5]);

for i = 1:6
  sector_x = [0, vertices_x(i), vertices_x(i+1), 0];
  sector_y = [0, vertices_y(i), vertices_y(i+1), 0];

  if i == r + 1
    fill(sector_x, sector_y, base_colors{i});
  else
    fill(sector_x, sector_y, 'w');
  endif
endfor

plot(vertices_x, vertices_y, 'k-', 'LineWidth', 2);

for i = 1:6
  plot([0, vertices_x(i)], [0, vertices_y(i)], 'k-', 'LineWidth', 1);
endfor

title(sprintf('Hexagon with p = %d, r = %d', p, r));
xlabel('x');
ylabel('y');

print -dpng 'p3-4_output.png';
printf('Success! Check p3-4_output.png\n');
