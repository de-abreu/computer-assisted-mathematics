pkg load symbolic;

syms a b p x t;
assume(x, 'nonzero')

f = 2*b*cos(x)^2 + 2*a*sin(x)*cos(x) - p*sqrt(a^2 + b^2) - b;

% simplified from the blackboard example

g = sin(t) * (2 * cos(x)^2 - 1) + cos(t) * sin(2 * x) - p;

g_simplified = simplify(g)

disp('Simplified equations:');
f_simplified = simplify(f)
g_simplified = simplify(g)

disp('Solutions:');
sol1 = solve(f_simplified, x)
sol2 = solve(g_simplified, x)
