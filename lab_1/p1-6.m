A = [
  3  , 1   , 0  , -2 , -9;
  0  , - 5 , 4  , 9  , 10;
  6  , 6   , 11 , -5 , 7;
  11 , -2  , 6  , 9  , 4;
   -8 , 0   , 0  , 0  , 1;
]

disp("LR factorization")
[L, U] = lu(A)

disp("QR factorization")
[Q, R] = qr(A)

disp("Is Q Orthogonal?")
norm(Q * Q' - eye(size(Q))) < 1e-12
