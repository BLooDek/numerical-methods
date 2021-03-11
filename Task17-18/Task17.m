
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
n = series(ID);
if n < 4
 n= 4;
end
if n > 6
 n = 6;
end
z = a:0.01:b;
for x = 1:n
 func(x) = ((-1)^series(ID - 1 + x))*series(ID + 4 + x);
end

f= @(x) func(1)*x.^5+func(2)*x.^4+func(3)*x.^3+func(4)*x.^2+func(5)*x+func(end);
n = size(z,2);
delta = (b-a)/(n-1);
sum = f(z(1)) + f(z(n));
for k = 2:(n-1)
    sum =  2 * f(z(k)) + sum;
end
ans = sum *delta/2
num2str(ans)