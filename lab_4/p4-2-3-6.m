function solve_system(A, b, label)
    disp(['=== System ', label, ' ==='])
    disp('Matrix A:');
    disp(A);
    disp('Vector b:');
    disp(b);

    [m, n] = size(A);
    r = rank(A);
    r_aug = rank([A b]);

    disp(['Rank of A: ', num2str(r)]);
    disp(['Rank of [A b]: ', num2str(r_aug)]);

    % Determine system type
    if r ~= r_aug
        disp('System type: INCOMPATIBLE (no solution)');
    else
        if r == n
            disp('System type: COMPATIBLE and DETERMINED (unique solution)');
        else
            disp('System type: COMPATIBLE and UNDERDETERMINED (infinitely many solutions)');
        end
    end

    if m > n
        disp('Structure: OVERDETERMINED (more equations than unknowns)');
    elseif m < n
        disp('Structure: UNDERDETERMINED (more unknowns than equations)');
    else
        disp('Structure: SQUARE (same number of equations and unknowns)');
    end

    X = pinv(A) * b;
    disp('Solution X = pinv(A)*b:');
    disp(X);

    % Verification: Check if A*X equals b
    b_check = A * X;
    disp('Verification A*X:');
    disp(b_check);
    residual = norm(b_check - b);
    disp(['Residual norm ||A*X - b||: ', num2str(residual)]);
    disp(' ')
endfunction

clc

% System a)
A1 = [4, 3, -1; -1, 1, 1; 1, 0, 3; 4, 4, 3];
b1 = [2; 0; -1; 1];
solve_system(A1, b1, 'a)');

% System b)
A2 = [-6, 8, -1; 2, -3, 0];
b2 = [-5; 7];
solve_system(A2, b2, 'b)');

% System c) - INCOMPATIBLE example
% x + y = 1 and x + y = 2 (contradictory equations)
A3 = [1, 1; 1, 1];
b3 = [1; 2];
solve_system(A3, b3, 'c) - INCOMPATIBLE');

% System d)
A4 = [-6, 8, -1; 2, 0, -3];
b4 = [-5; 7];
solve_system(A4, b4, 'd)');
