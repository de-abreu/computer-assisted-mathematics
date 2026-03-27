function [A, b] = partialPivot (A, b)
  ## -*- texinfo -*-
  ## @deftypefn {Function File} {@var{A_out}, @var{b_out} =} partialPivot (@var{A}, @var{b})
  ##
  ## Reorders the rows of matrix @var{A} and vector @var{b} to place the
  ## largest absolute values on the diagonal.
  ##
  ## This is a preprocessing step to improve the convergence of iterative
  ## solvers like Gauss-Seidel or Jacobi.
  ## @end deftypefn

  [n, m] = size (A);
  if n ~= m
    error ("partialPivot: Matrix A must be square.");
  endif

  for i = 1:n
    % Find the index of the largest element in the current column i,
    % searching from the current row i down to the bottom.
    [val, max_idx] = max (abs (A(i:n, i)));

    % The max_idx returned by max() is relative to the start of the search (i).
    % We convert it back to the global matrix index.
    pivot_row = max_idx + i - 1;

    % If the largest value is 0, the matrix is singular and cannot be solved.
    if val == 0
      warning ("partialPivot: Column %d is all zeros. Matrix may be singular.", i);
      continue;
    endif

    % Swap the current row with the pivot row in both A and b
    if pivot_row ~= i
      A([i, pivot_row], :) = A([pivot_row, i], :);
      b([i, pivot_row]) = b([pivot_row, i]);
    endif
  endfor
endfunction
