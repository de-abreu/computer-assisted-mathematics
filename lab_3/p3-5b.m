## -*- texinfo -*-
## @deftypefn {Script File} {} p3-5b
##
## Plot a rectangle with red fill
##
## @end deftypefn

graphics_toolkit('qt');

x = [5, -7, -7, 5];
y = [4, 4, -3, -3];

fill(x, y, 'r');
axis equal;
axis([-8, 6, -4, 5]);
title('Rectangle (Red Fill)');
print -dpng 'p3-5b_output.png';
printf('Success! Check p3-5b_output.png\n');
