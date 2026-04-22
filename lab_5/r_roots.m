% Solution to the exercise 5.2, exported as a function.

function r = r_roots(coeffs, tolerance)
  if nargin < 2
    tolerance = 1e-10;
  end

  all_roots = roots(coeffs);
  real_mask = abs(imag(all_roots)) < tolerance;
  r = real(all_roots(real_mask));
end
