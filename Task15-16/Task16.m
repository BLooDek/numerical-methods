clear all; close all; clc;
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
ID =14
variant = 1;
randn('seed', variant);
c1 = 3*((-1)^series(ID + 2))*series(ID);
c2 = ((-1)^series(ID + 3))*series(ID + 1);
if abs(c1) < abs(c2)
 c2 = ((-1)^series(ID + 2))*series(ID);
c1 = 3*((-1)^series(ID + 3))*series(ID + 1);
end
if abs(c1) == abs(c2)
 c1 = c1*2;
end
%x = -pi:pi/100:pi;
x = 0:pi/100:2*pi;
%y = c1*sin(x)+c2*x;
y = c1*cos(x)+c2*x;
y_noised = y + 0.15*(max(y) - min(y))*randn(1,length(x));
gt = fittype('a*cos(x)+x*b');
yfit = fit(x', y_noised', gt, 'StartPoint', [1 1]),
plot(yfit, x, y_noised)