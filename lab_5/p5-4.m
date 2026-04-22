pkg load symbolic

syms m n;
f = (1 - m)^2 + 4*n * (1 + m);
solve(f, [m n])
