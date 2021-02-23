function [x_star, iter] = NumerMeth_tasks_05_06(f, x0, x1, tol, n_secant)
% Secant method 
% Solves f(x) = 0 by doing n_secant steps of the secant method
% starting with x0 and x1.
% Inputs : f -- the function
% x0 -- a starting guess, a number
% x1 -- the second starting guess
% n_secant -- the number of steps to do
% Output : x -- the approximate solution
y0 = f(x0);   y1 = f(x1);
iter = 0; % set counter to zero
y = 2*tol;
while abs(y) > tol & iter < n_secant
    x = x1 - (x1 - x0 ) * y1 /(y1 - y0); % secant formula
    y = f(x); % y value at the new approximate solution
    % Move numbers to get ready for the next step
    x0 = x1;   y0 = y1;
    x1 = x;    y1 = y;
    iter = iter + 1; % increment counter
end
x_star = x;