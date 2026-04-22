function [x, iterations] = gaussSeidel (A, b, tol, max_iter)
  ## -*- texinfo -*-
  ## @deftypefn {Function File} {@var{x}, @var{iterations} =} gaussSeidel (@var{A}, @var{b})
  ## @deftypefnx {Function File} {@var{x}, @var{iterations} =} gaussSeidel (@var{A}, @var{b}, @var{tol})
  ## @deftypefnx {Function File} {@var{x}, @var{iterations} =} gaussSeidel (@var{A}, @var{b}, @var{tol}, @var{max_iter})
  ##
  ## Solve the linear system @math{Ax = b} using the Gauss-Seidel iterative method.
  ##
  ## This implementation performs @strong{Partial Pivoting} prior to iteration
  ## to ensure the matrix @var{A} is as close to diagonally dominant as possible,
  ## which is a requirement for convergence.
  ##
  ## @table @asis
  ## @item @var{A}
  ## A square coefficient matrix of size @math{n \times n}.
  ## @item @var{b}
  ## A column vector of constants of size @math{n \times 1}.
  ## @item @var{tol}
  ## Convergence tolerance. Iteration stops when @math{||x_{new} - x_{old}||_\infty < tol}.
  ## Default value is @code{1e-6}.
  ## @item @var{max_iter}
  ## Maximum number of iterations allowed. Default is @code{100}.
  ## @end table
  ##
  ## @example
  ## A = [2, 5, 1; 5, 2, 1; 1, 1, 5];
  ## b = [-2; 4; 5];
  ## [x, iters] = gaussSeidel (A, b);
  ## @end example
  ##
  ## @seealso{pivoting, norm}
  ## @end deftypefn

  if nargin < 3, tol = 1e-6; end
  if nargin < 4, max_iter = 100; end

  % --- 1. Validate system has a unique solution ---
  validateSystem (A, b);

  % --- 2. Prepossessing: pivot rows to assure a diagonally dominant A ---
  [A, b] = partialPivot (A, b);

  % --- 3. Solve iteratively. ---
  [n, ~] = size (A);
  x = zeros (n, 1);

  for k = 1:max_iter
    x_old = x;
    for i = 1:n
      sum_val = A(i, 1:i-1) * x(1:i-1) + A(i, i+1:n) * x_old(i+1:n);
      x(i) = (b(i) - sum_val) / A(i, i);
    end

    iterations = k;
    if norm (x - x_old, inf) < tol
      return;
    endif
  endfor

  warning ("gaussSeidel: Maximum iterations reached.");
endfunction
