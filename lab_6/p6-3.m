pkg load symbolic;

syms a b p x;
assume(x, 'nonzero')

f = 2*b*cos(x)^2 + 2*a*sin(x)*cos(x) - p*sqrt(a^2 + b^2) - b;

disp('Simplified equation:');
f_simplified = simplify(f)

disp('Solutions:');
sol = solve(f_simplified, x)
