pkg load symbolic
syms a x y z

sol = solve(
  x^2 + y*a - z == 0,
  x / z - a == 0,
  x,
  y,
  z
);

vars = fieldnames(sol);
for i = 1:numel(vars)
  printf('%s = %s\n', vars{i}, char(sol.(vars{i})))
end
