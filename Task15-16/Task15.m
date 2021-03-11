clear all; close all; clc;
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
n = series(ID);
if n < 4
 n= 4;
end
if n > 6
 n = 6;
end
for x = 1:n
 func(x) =series(ID + 4 + x);
end
variant = 30;
randn('seed', variant);
x = -10:0.01:10;
y = 8*x.^5 + 6*x.^4 + 8*x.^3 - 6*x.^2 - 4*x + 7;
y_noised = y + 0.15*(max(y) - min(y))*randn(1,length(y));
gt = fittype('a*x^3+b*x^2+c*x+d');
yfit = fit(x', y_noised', gt, 'StartPoint', [1 1 1 1]),
plot(yfit, x, y_noised)