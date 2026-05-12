function [vl, vc] = interpolation(x, y, vx)
  vl = interp1(x, y, vx, "linear");
  vc = interp1(x, y, vx, "cubic");
end
