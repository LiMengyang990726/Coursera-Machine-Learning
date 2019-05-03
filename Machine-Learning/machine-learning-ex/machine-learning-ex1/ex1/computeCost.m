function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% disp(size(X));
% disp(size(theta));
% through the above, we found that h should be X*theta;

% y is the actual answer
% h is the hypothesis
h = X*theta;
cost = (h-y).^2;
coeff = 1/(2*m);

J = coeff*sum(cost);
% disp(size(J));



% =========================================================================

end
