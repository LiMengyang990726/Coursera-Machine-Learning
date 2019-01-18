function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);


% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the
%                     partial derivatives w.r.t. to each element of Theta
%

% A non-vectorized implementation for cost function
for i = 1:num_movies
  for j = 1:num_users
    if(R(i,j) == 1)

      predicted = Theta(j,:) * (X(i,:))';
      error = predicted - Y(i,j);

      J += error.^2;

    end
  end
end
J = 0.5 * (J);                                                              % without regularization
J = J + (lambda/2) * sum(sum(Theta.^2)) + (lambda/2) * sum(sum(X.^2));      % with regularization

% A vectorized implementation for gradient
prediction = X * Theta';
error = prediction - Y;                                                     % error is num_movies * num_users

X_grad = (error .* R) * Theta;                                              % theta is num_users * num_features, without regularization
X_grad = X_grad + lambda * X;                                               % with regularization
Theta_grad = (error .* R)' * X;                                             % X is num_movies x num_features, without regularization
Theta_grad = Theta_grad + lambda * Theta;                                   % with regularization

% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
