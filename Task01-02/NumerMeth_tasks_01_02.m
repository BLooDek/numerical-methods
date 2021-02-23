function [x_star, iter] = NumerMeth_tasks_01_02(f, f1, x0, tol, n_iter)
% Newton's method 
% Solves f(x) = 0 using Newton 's method until |f(x)| < tol.
% Safety stop after n_iter iterations
% Inputs : f -- the function
% f1 -- it's derivative
% x0 -- starting guess, a number
% tol -- desired tolerance, runs until |f(x)|< tol
% Output : x_star -- the approximate solution
x = x0; % set x equal to the initial guess x0.
iter = 0; % set counter to zero
y = f(x);
while abs(y) > tol & iter < n_iter
    % Do until the tolerance is reached or maximum of iterations is reached.
    x = x - y/f1(x); % Newton's formula
    y = f(x);
    iter = iter + 1; % increment counter
end
x_star = x;