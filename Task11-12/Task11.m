clc;
clear all;
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
ID =14
M=2;
a11 = ((-1)^series(ID + 2))* series(ID);
a12 = ((-1)^series(ID + 3))* series(ID+1);
a21 = ((-1)^series(ID + 4))* series(ID+2);
a22 = ((-1)^series(ID + 5))* series(ID+3);
A = [a11 a12 ; a21 a22];

[Eigenvector Eigenvalue] = eig(A)

% Result:
A*Eigenvector(:,1) - Eigenvalue(1,1)*Eigenvector(:,1)

A*Eigenvector(:,2) - Eigenvalue(2,2)*Eigenvector(:,2)