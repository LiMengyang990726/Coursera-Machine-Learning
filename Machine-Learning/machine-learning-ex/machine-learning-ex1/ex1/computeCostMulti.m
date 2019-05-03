function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

disp('ComputeCostMulti now');
% y is the actual answer
% h is the hypothesis

disp(size(X));
disp(size(theta));
h = X*theta;
cost = (h-y).^2;
coeff = 1/(2*m);

J = sum(coeff*cost);



% =========================================================================

end
