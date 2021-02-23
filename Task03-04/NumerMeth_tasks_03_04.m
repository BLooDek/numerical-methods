function [x_star, err] = NumerMeth_tasks_03_04(f, a, b, xtol, n_bisec)
% Bisection method 
% Does n_bisec iterations of the bisection method for a function f
% Inputs : f -- a function
% a, b -- left and right edges of the interval
% xtol -- desired tolerance, runs until |(b - a)/2| < tol
% n_bisec -- the number of bisections to do
% Outputs : x -- the estimated solution of f(x) = 0
% err -- an upper bound on the error
c = f(a);   d = f(b);
if c*d > 0.0
    error ('Function has same sign at both endpoints.')
end
% disp ('x y')
err = (b - a)/2;
iter = 0; % set counter to zero
while abs(err) > xtol & iter < n_bisec
    % find the middle and evaluate there
    x = (a + b)/2;
    y = f(x);
%     disp([x y])
    if y == 0.0 % solved the equation exactly
        err = 0;
        break % jumps out of the for loop
    end
    % decide which half to keep, so that the signs at the ends differ
    if c*y < 0
        b = x;
    else
        a = x;
    end
    err = (b - a)/2;
    iter = iter + 1; % increment counter
end
% set the best estimate for x and the error bound
x_star = (a + b)/2;
err = (b - a)/2;