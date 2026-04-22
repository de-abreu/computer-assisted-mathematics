## -*- texinfo -*-
## @deftypefn {Script File} {} p3-2
##
## Plot in polar coordinates:
## r = sqrt(sin(t) + t^2), theta = t
## for t in [0, 6*pi]
##
## @end deftypefn

graphics_toolkit('qt');

t = 0:0.1:6*pi;
r = sqrt(sin(t) + t.^2);

polar(t, r);
title('Polar Plot: r = \surd(sin(t) + t^2)');
print -dpng 'p3-2_output.png';
printf('Success! Check p3-2_output.png\n');