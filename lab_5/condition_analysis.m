% Refers to the solution to the problem 5.7

function condition_analysis(A)
  % Validate input is square
  [m, n] = size(A);
  if m ~= n
    error('Input must be a square matrix');
  end

  % Calculate reciprocal condition number (range 0 to 1)
  r = rcond(A);

  % Determine classification based on reciprocal condition number
  if r < 0.5
    classification = 'Poorly conditioned';
    description = 'Significant precision loss possible';
  else
    classification = 'Well conditioned';
    description = 'Good conditioning';
  end

  % Display results
  fprintf('\n=== Matrix Condition Analysis ===\n');
  fprintf('Reciprocal condition number: %.4e\n', r);
  fprintf('Classification: %s\n', classification);
  fprintf('Description: %s\n', description);
  fprintf('===================================\n\n');

end
