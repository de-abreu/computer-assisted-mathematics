pkg load symbolic;

function solve_symbolic_system(A, b, label)
    disp(['=== System ', label, ' ==='])
    disp('Matrix A:');
    pretty(A);
    disp('Vector b:');
    pretty(b);

    r = rank(A);
    r_aug = rank([A b]);

    disp(['Rank of A: ', num2str(r)]);
    disp(['Rank of [A b]: ', num2str(r_aug)]);

    if r ~= r_aug
      disp('System type: INCOMPATIBLE (no solution)');
    else

      [m, n] = size(A);
      disp(['Size: ', num2str(m), ' x ', num2str(n)]);

      X = pinv(A) * b;
      disp('Solution X = pinv(A)*b:');
      pretty(simplify(X));

      % Verification: Check if A*X equals b
      b_check = A * X;
      disp('Verification A*X:');
      pretty(simplify(b_check));

      residual = norm(b_check - b);
      disp('Residual norm ||A*X - b||:');
      pretty(simplify(residual));
      disp(' ')
    end
endfunction

clc

% System 1
alpha = sym('alpha'); beta = sym('beta'); gamma = sym('gamma');

A1 = [alpha, -beta, 0; gamma, 0, beta; 0, gamma, alpha];
b1 = [gamma; alpha; beta];
solve_symbolic_system(A1, b1, '1 - Greek symbols');

% System 2
a = sym('a');
b_sym = sym('b');
c = sym('c');
p = sym('p');
q = sym('q');

A2 = [a, -b_sym, 0; -b_sym, b_sym, -c; 0, c, a];
b2 = [p; -2 * q; p + q];
solve_symbolic_system(A2, b2, '2 - Latin symbols');
