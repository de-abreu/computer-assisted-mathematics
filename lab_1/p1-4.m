A = [
  3  , 1   , 0  , -2 , -9;
  0  , - 5 , 4  , 9  , 10;
  6  , 6   , 11 , -5 , 7;
  11 , -2  , 6  , 9  , 4;
   -8 , 0   , 0  , 0  , 1;
]

disp("Third line")
A(3, :)

disp("Last column")
A(:, end)

disp("Last line")
A(end, :)

disp("Submatrix (lines 2 to 4, columns 1 to 3)")
A(2:4, 1:3)
