function [x_star, iter] = NumerMeth_tasks_09_10(f, Df, x0, tol, n_iter)
% Newton's method for solving systems of nonlinear algebraic equations

% f = @(x)[2*x(1)^2-3*x(2)-2;4*x(1)^2-1*x(2)-6] % the vector function
% the matrix of partial derivatives
% Df =  @(x )[4*x(1), -3; 8*x(1), -1]
iter = 0; % set counter to zero
x = x0';
while sum(abs(f(x)) > [tol; tol])==2 & iter < n_iter
    Dx = -Df(x)\f(x); % solve for increment
    x = x + Dx; % add on to get new guess
%     f(x); % see if f(x) is really zero
    iter = iter + 1; % increment counter
end
x_star = x';
