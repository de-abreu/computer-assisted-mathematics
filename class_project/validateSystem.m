function validateSystem (A, b)
  ## -*- texinfo -*-
  ## @deftypefn {Function File} {} validateSystem (@var{A}, @var{b})
  ##
  ## Validate that the linear system @math{Ax = b} is determined
  ## (has a unique solution).
  ##
  ## Checks:
  ## - A is square
  ## - det(A) ~= 0 (matrix is non-singular)
  ## - rank(A) == rank([A|b]) (system is consistent)
  ##
  ## @table @asis
  ## @item @var{A}
  ## Coefficient matrix of size @math{n \times n}.
  ## @item @var{b}
  ## Right-hand side column vector of size @math{n}.
  ## @end table
  ##
  ## @example
  ## A = [2, 5, 1; 5, 2, 1; 1, 1, 5];
  ## b = [-2; 4; 5];
  ## validateSystem(A, b);  % Throws error if invalid
  ## @end example
  ##
  ## @seealso{gaussSeidel, jacobi, partialPivot}
  ## @end deftypefn

  [n, m] = size (A);
  if n ~= m
    error ("validateSystem: Matrix A must be square (%dx%d).", n, m);
  endif

  if length (b) ~= n
    error ("validateSystem: Vector b must have length %d.", n);
  endif

  if det (A) == 0
    error ("validateSystem: Matrix A is singular (det = 0). System has no unique solution.");
  endif

  rank_A = rank (A);
  rank_aug = rank ([A b]);
  if rank_A ~= rank_aug
    error ("validateSystem: System is inconsistent (rank(A) = %d ~= rank([A|b]) = %d). No solution exists.", rank_A, rank_aug);
  endif

  if rank_A < n
    error ("validateSystem: System is underdetermined (rank(A) = %d < n = %d). Infinite solutions exist.", rank_A, n);
  endif
endfunction
