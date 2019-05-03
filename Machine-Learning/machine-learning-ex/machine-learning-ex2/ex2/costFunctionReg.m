function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% ===========regularized cost function==============================

h = sigmoid(X*theta);
term1 = -((log(h))'*y);
term2 = -((log(1-h))'*(1-y));
coeff = 1/m;

J = coeff*sum(term1+term2) + lambda*(coeff/2)*sum(theta(2:length(theta)).^2);

% ===========regularized gradient==============================

expand = repmat((h-y),1,size(X,2));
regularizedGrad = theta(2:length(theta));

grad = (coeff*sum(X.*expand))';
grad(2:length(theta)) = grad(2:length(theta)) + (lambda*coeff)*regularizedGrad;

% =============================================================

end
