function  desc_matrix(A)
  assert(isequal(size(A), [4, 4]), "Input must be a 4x4 matrix");

  disp("Third line:")
  A(3, :)

  disp("Last column:")
  A(:, end)

  disp("Last line:")
  A(end, :)

  disp("Submatrix determined by lines 2-4 and columns 1-3")
  A(2:4, 1:3)
end
