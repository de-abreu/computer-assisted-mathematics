function [d, inv] = func(A)
  [rows, columns] = size(A);
  assert(rows == columns, "Matrix is not square");
  assert(rank(A) < min(size(rows, columns)), "Matrix is singular");
  d = det(A);
  inv = inverse(A);
end
