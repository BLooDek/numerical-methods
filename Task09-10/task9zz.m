% Task #9 Newton's method for solving systems of nonlinear algebraic equations (sym. sol.)
clc
clear all;
load C:\Users\BLooDek\Desktop\numerical-methods\series.mat;
ID=14;
a11 = ((-1)^series(ID + 2))*series(ID);
a12 = ((-1)^series(ID + 3))*series(ID+1);
a21 = ((-1)^series(ID + 4))*series(ID+2);
a22 = ((-1)^series(ID + 5))*series(ID+3);
b1 = ((-1)^series(ID + 6))*series(ID+4);
b2 = ((-1)^series(ID + 7))*series(ID+5); 
a = [a11 a12; a21 a22]; b = [b1 b2]' 
z=-5:0.1:5;
f= @(x) [ a11*x(1)^2 + a12*x(2) - b1; a21*x(1)^2 + a22*x(2) - b2 ];
Df= @(x) [ a11*2*x(1), a12; a21*2*x(1), a22];
fz = (b1 - a11*z.^2)/a12;
fz2=(b2-a21*z.^2)/a22;

[x_star, iter] = NumerMeth_tasks_09_10(f, Df, [-0.8 5], [0], 100) 
x_star1= [ -1*x_star(1) x_star(2)]
f(x_star)
plot(z,fz)
hold on
plot(z,fz2)
title('task#9');
format compact