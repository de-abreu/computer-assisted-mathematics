function visual_insp(a, b)
  x = a:0.05:b;
  
  % Left side: (x-3)^2 + 5
  lhs = (x - 3).^2 + 5;
  
  % Right side: cos(|x|)
  rhs = cos(abs(x));
  
  plot(x, lhs, 'b-', x, rhs, 'r--');
  legend('(x-3)^2 + 5', 'cos(|x|)');
  grid on;
  title(sprintf('Graphical location of roots in [%.1f, %.1f]', a, b));
  xlabel('x');
  ylabel('y');
end
