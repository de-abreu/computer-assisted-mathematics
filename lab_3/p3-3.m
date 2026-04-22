## -*- texinfo -*-
## @deftypefn {Script File} {} p3-3
##
## Plot in logarithmic coordinates:
## f(t) = e^(3t) for t in [1, 5]
##
## @end deftypefn

graphics_toolkit('qt');

t = 1:0.1:5;
f = exp(3 * t);

loglog(t, f);
title('Logarithmic Plot: f(t) = e^{3t}');
xlabel('t');
ylabel('f(t)');
grid on;
print -dpng 'p3-3_output.png';
printf('Success! Check p3-3_output.png\n');