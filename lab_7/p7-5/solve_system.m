pkg load symbolic
syms a b c

[a_sol, b_sol, c_sol] = solve(
  a * c - b^2 == 0,
  a + c - 2 * (b + 4) == 0,
  a * (c + 32) - (b + 4)^2 == 0,
  a, b, c
);

for i = 1:length(a_sol)
  printf('Solution %d: a = %s, b = %s, c = %s\n', i,
         char(a_sol(i)), char(b_sol(i)), char(c_sol(i)))
end
