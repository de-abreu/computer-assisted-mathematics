## -*- texinfo -*-
## @deftypefn {Script File} {} p3-1a
##
## Plot the piecewise function:
## y = sin(5t) for -9 <= t < -3 and 3 <= t < 9
## y = cos(t) - cos(3) - sin(15) for -3 <= t < 3
##
## @end deftypefn

graphics_toolkit('qt');

t = -9:0.1:9;
y = zeros(size(t));

idx1 = (t >= -9) & (t < -3);
y(idx1) = sin(5 * t(idx1));

idx2 = (t >= -3) & (t < 3);
y(idx2) = cos(t(idx2)) - cos(3) - sin(15);

idx3 = (t >= 3) & (t < 9);
y(idx3) = sin(5 * t(idx3));

plot(t, y);
title('Piecewise Function');
xlabel('t');
ylabel('y');
grid on;
print -dpng 'p3-1a_output.png';
printf('Success! Check p3-1a_output.png\n');