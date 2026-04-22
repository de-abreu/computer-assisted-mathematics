A = [1 -1; 3 2];
[vec, val] = eig(A);

% Extract eigenvalues from diagonal of val
lambda = diag(val);

% Pretty print eigenvalues
fprintf('\n=== EIGENVALUES ===\n');
for i = 1:length(lambda)
    fprintf('Eigenvalue %d: %.4f\n', i, lambda(i));
end

% Display three eigenvectors for each eigenvalue using scalars [1, 2, 3]
fprintf('\n=== EIGENVECTORS ===\n');
scalars = [1, 2, 3];

for i = 1:length(lambda)
    fprintf('\nEigenvalue %.4f:\n', lambda(i));
    v = vec(:, i);  % Unit eigenvector from eig()
    for j = 1:length(scalars)
        k = scalars(j);
        eigenvec = k * v;
        fprintf('  k = %d: [', k);
        for row = 1:length(eigenvec)
            if row > 1
                fprintf(', ');
            end
            fprintf('%.4f', eigenvec(row));
        end
        fprintf(']\n');
    end
end
fprintf('\n');
