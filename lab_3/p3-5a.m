## -*- texinfo -*-
## @deftypefn {Script File} {} p3-5a
##
## Plot a rectangle with no fill and red outline
##
## @end deftypefn

graphics_toolkit('qt');

x = [5, -7, -7, 5, 5];
y = [4, 4, -3, -3, 4];

plot(x, y, 'r-', 'LineWidth', 2);
axis equal;
axis([-8, 6, -4, 5]);
title('Rectangle (No Fill)');
print -dpng 'p3-5a_output.png';
printf('Success! Check p3-5a_output.png\n');
