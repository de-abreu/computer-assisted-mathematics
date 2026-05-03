V0 = visual_insp();

for k = 1:size(V0, 2)
  v0 = V0(:, k);
  printf('\n--- Starting from (%.4f, %.4f) ---\n', v0(1), v0(2));
  [sol, fval, exitflag, output] = fsolve(@nonlin, v0);
  printf('x = %.4f, y = %.4f\n\n', sol(1), sol(2));
end
