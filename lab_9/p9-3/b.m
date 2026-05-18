function dy = b(x, y)
  dy = [y(2); y(2) + 2 .* y(1) .* sin(x)];
end
