% Task #14 Polynomial fitting for a trig function
clear all
clc
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
ID = 14;
c1 = 3*((-1)^series(ID + 2))*series(ID);
c2 = ((-1)^series(ID + 3))*series(ID + 1);
if abs(c1) < abs(c2)
 c2 = ((-1)^series(ID + 2))*series(ID);
c1 = 3*((-1)^series(ID + 3))*series(ID + 1);
end
if abs(c1) == abs(c2)
 c1 = c1*2;
end
x = 0:pi/100:2*pi;
y = c1*cos(x)+c2*x;
xi = 0:pi/10:2*pi;
yi=c1*cos(xi)+c2*xi;

c_fit1 = polyfit(xi, yi, 3)
c_fit = polyfit(xi, yi, 4)
y_fit = polyval(c_fit, x);
y_fit1 = polyval(c_fit1, x);
figure(2)
plot(x, y), hold on, plot(xi, yi, 'ro'), plot(x, y_fit, 'g.-'), plot(x,y_fit1, 'y.-');