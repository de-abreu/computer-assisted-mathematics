% system matrix, exact solution, constant terms vector:
A = [-6, 8, -1; 2, 0, -3];
b = [-5; 7];

% execution times:
tic;
y=pinv(A)*b;
time1=toc

tic;
z=A\b;
time2=toc

% precision of the calculated solutions:
n1=norm(A*y-b)
n2=norm(A*z-b)
