graphics_toolkit('gnuplot');
x = 0:0.1:10;
y = sin(x);
plot(x, y);
title('Nix-Generated Plot');
print -dpng 'test_output.png';
printf('Success! Check test_output.png\n');