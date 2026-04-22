% Refers to the solution to the p 5.6 problem

function [min_sv, max_sv, cond_num] = square_matrix_report(A)
  % Validate input is square
  [m, n] = size(A);
  if m ~= n
    error('Input must be a square matrix');
  end

  % Calculate singular values
  sv = svd(A);

  % Find minimum and maximum singular values
  min_sv = min(sv);
  max_sv = max(sv);

  % Calculate condition number with respect to inversion
  cond_num = cond(A);
end
