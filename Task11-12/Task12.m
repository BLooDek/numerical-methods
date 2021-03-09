clc
clear all;
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
'Task11'
ID=3;

% Task #12 Using Matlab operators for eigenvalues and eigenvectors (3*3)
'Task12'

M = series(ID);
if M > 8
 M = 8;
else
 if M < 6
 M = 6;
 end
end
for k = 1:M
 for j = 1:M
 A_cur(k, j) = ((-1)^ series (ID + 2 + M*(k-1) + j))* series (ID + M*(k-1) + j);
 end
end
A = A_cur(1:3, 1:3);

[Eigenvector Eigenvalue] = eig(A)

% checking
%A*Eigenvector(:,1) - Eigenvalue(1,1)*Eigenvector(:,1)

%A*Eigenvector(:,2) - Eigenvalue(2,2)*Eigenvector(:,2)

%A*Eigenvector(:,3) - Eigenvalue(3,3)*Eigenvector(:,3)