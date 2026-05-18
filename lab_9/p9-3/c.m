function dy = c(x, y)
  dy = [y(2:3); y(3) - x .* y(2) + 2 .* y(1) .* sin(x) - x .^ 3];
end
