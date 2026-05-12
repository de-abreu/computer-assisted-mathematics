function vy = lagrange (x, y, vx)
  % An adaptation of the formula seen on page 9.
  n = length (x);
  vy = zeros (size (vx));
  for k = 1:length (vx)
    X = vx(k);
    for i = 1:n
      j = [1:i-1, i+1:n]; % skip when i == j
      vy(k) += y(i) * prod((X - x(j)) ./ (x(i) - x(j)));
    end
  end
end
