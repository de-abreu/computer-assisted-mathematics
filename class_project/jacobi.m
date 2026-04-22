function [x, iterations] = jacobi (A, b, tol, max_iter)
## -*- texinfo -*-
  ## @deftypefn {Function File} {@var{x}, @var{iterations} =} jacobiMethod (@var{A}, @var{b})
  ## @deftypefnx {Function File} {@var{x}, @var{iterations} =} jacobiMethod (@var{A}, @var{b}, @var{tol})
  ## @deftypefnx {Function File} {@var{x}, @var{iterations} =} jacobiMethod (@var{A}, @var{b}, @var{tol}, @var{max_iter})
  ##
  ## Solve the linear system @math{Ax = b} using the Jacobi iterative method.
  ##
  ## The Jacobi method updates all components of @var{x} simultaneously using
  ## only values from the previous iteration. This makes it highly
  ## parallelizable but generally slower to converge than Gauss-Seidel.
  ##
  ## This implementation automatically performs @strong{Partial Pivoting}
  ## using the @code{partialPivot} function to improve diagonal dominance.
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
  ## A = [5, 2, 1; 2, 5, 1; 1, 1, 5];
  ## b = [4; -2; 5];
  ## [x, iters] = jacobiMethod (A, b, 1e-8);
  ## @end example
  ##
  ## @seealso{gaussSeidel, partialPivot, norm}
  ## @end deftypefn

  if nargin < 3, tol = 1e-6; end
  if nargin < 4, max_iter = 100; end

  % --- 1. Validate system has a unique solution ---
  validateSystem (A, b);

  % --- 2. Prepossessing: pivot rows to assure a diagonally dominant A ---
  [A, b] = partialPivot (A, b);

  [n, ~] = size (A);
  x = zeros (n, 1);
  D = diag (A);          % Extract the diagonal elements
  R = A - diag (D);      % Remainder matrix (A with zeros on the diagonal)

  % --- 3. Iteration ---
  x = zeros (n, 1);
  D = diag (A);          % Extract the diagonal elements
  R = A - diag (D);      % Remainder matrix (A with zeros on the diagonal)

  % --- 2. Iteration ---
  for k = 1:max_iter
    x_old = x;

    % Vectorized Jacobi update:
    % x_new = (b - (A_without_diagonal * x_old)) ./ diagonal
    x = (b - R * x_old) ./ D;

    iterations = k;
    % Check convergence using the infinity norm
    if norm (x - x_old, inf) < tol
      return;
    endif
  endfor

  warning ("jacobi: Maximum iterations reached.");
endfunction
