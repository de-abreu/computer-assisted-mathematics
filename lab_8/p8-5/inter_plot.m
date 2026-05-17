function inter_plot(x, y)
  vx = min(x):(max(x) - min(x)) / 100:max(x);

  disp("Estimation using linear interpolation:")
  vyl = interp1(x, y, vx, "linear")

  disp("Estimation using spline interpolation:")
  vys = interp1(x, y, vx, "spline")

  plot(x, y, 'bd')
  hold on
  plot(vx, vyl, 'r', vx, vys, '--b')
  axis([min(x)-1 max(x)+1, min([y vyl vys])-5 max([y vyl vys])+5])
  legend('points', 'linear', 'spline')
  hold off
end
