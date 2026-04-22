## -*- texinfo -*-
## @deftypefn {Script File} {} p3-1b
##
## Plot two functions:
## f(t) = sin(pi*t) * cos(pi*t) - magenta dashed line
## g(t) = sin(pi*t + 1) * cos(pi*t + 1) - cyan squares with continuous line
##
## @end deftypefn

graphics_toolkit('qt');

t = -3:0.1:3;

f = sin(pi * t) .* cos(pi * t);
g = sin(pi * t + 1) .* cos(pi * t + 1);

plot(t, f, 'm--', t, g, 'cs-', 'MarkerFaceColor', 'c');
title('Functions f(t) and g(t)');
xlabel('t');
ylabel('y');
legend('f(t) = sin(\pit)cos(\pit)', 'g(t) = sin(\pit+1)cos(\pit+1)');
grid on;
print -dpng 'p3-1b_output.png';
printf('Success! Check p3-1b_output.png\n');