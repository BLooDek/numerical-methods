clear all; 
close all;
clc
load("C:\Users\BLooDek\Desktop\numerical-methods\series.mat");
format long

a = ((-1)^series(ID + 5))*series(ID + 2);
b = ((-1)^series(ID + 6))*(series(ID + 3) + series(ID + 4));


if b < a
 bb = a;
 a = b;
 b = bb;
end
if b == a
 b = a + series(ID + 4);
end


z = a:0.01:b;
c1 = 3*((-1)^series_NumerMeth(ID + 2))*series_NumerMeth(ID);
c2 = ((-1)^series_NumerMeth(ID + 3))*series_NumerMeth(ID + 1);

if abs(c1) < abs(c2)
c2 = ((-1)^series_NumerMeth(ID + 2))*series_NumerMeth(ID);
c1 = 3*((-1)^series_NumerMeth(ID + 3))*series_NumerMeth(ID + 1);
end
if abs(c1) == abs(c2)
c1 = c1*2;
end

f = @(x) c1*cos(x) +(c2*x)

n = size(z,2);
delta = (b-a)/(n-1);
sum = f(z(1)) + f(z(n));
for k = 2:(n-1)
    sum =  2 * f(z(k)) + sum;
end

ans = sum *delta/2
num2str(ans)

