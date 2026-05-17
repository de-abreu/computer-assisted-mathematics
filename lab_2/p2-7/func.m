function B = func(A)
  B = zeros(size(A))

  mask = A < 0;
  B(mask) = sin(A(mask)) ./ (2 * A(mask));

  mask = A >= 0;
  B(mask) = cos(A(mask));
end
