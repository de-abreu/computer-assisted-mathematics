pkg load symbolic
syms m n p q

[m_sol, n_sol, p_sol, q_sol] = solve(
  m + p - 2*n == 0,
  n*q - p^2 == 0,
  m + q == 37,
  n + p == 36,
  m, n, p, q
);

for i = 1:length(m_sol)
  printf(
    'Solution %s: m = %s, n = %s, p = %s, q = %s\n',
    i,
    char(m_sol(i)),
    char(n_sol(i)),
    char(p_sol(i)),
    char(q_sol(i))
  )
end
