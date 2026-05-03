pkg load symbolic

syms a x y z

eq1 = x^2 + y*a - z == 0;
eq2 = x / z - a == 0;

sol = solve(eq1, eq2, x, y, z);

vars = fieldnames(sol);
for i = 1:numel(vars)
  printf('%s = %s\n', vars{i}, char(sol.(vars{i})))
end
