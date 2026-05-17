function desc_matrix(A)
  [rows, columns] = size(A)
  assert(rows == columns, "Matrix is not square")

  disp("Transpose:")
  A'

  disp("Rank:")
  rank(A)

  disp("Determinant:")
  det(A)
end
