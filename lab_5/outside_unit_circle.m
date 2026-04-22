% Refers to the solution to the p 5.3 exercise

function r = outside_unit_circle(coeffs, threshold)
  if nargin < 2
    threshold = 1;
  end

  all_roots = roots(coeffs);
  mask = (abs(imag(all_roots)) > 1e-10) & (abs(all_roots) > threshold);
  r = all_roots(mask);
end
