% Task #13 Polynomial fitting for a polynomial
format long
clear all
close all
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
n = series(ID);
if n < 4
 n= 4;
end
if n > 6
 n = 6;
end
for x = 1:n
 func(x) = ((-1)^series(ID - 1 + x))*series(ID + 4 + x);
end

x = -10:0.01:10; 
y = 8*x.^5 + 6*x.^4 + 8*x.^3 - 6*x.^2 - 4*x + 7
xi = -10:1:10;
yi =  8*xi.^5 + 6*xi.^4 + 8*xi.^3 - 6*xi.^2 - 4*xi + 7
c_fit = polyfit(xi, yi,4)
y_fit = polyval(c_fit, x);