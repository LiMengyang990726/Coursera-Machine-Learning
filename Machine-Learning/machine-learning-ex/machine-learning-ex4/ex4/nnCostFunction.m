function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices.
%
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%

a1 = [ones(m, 1) X];

z2 = a1*Theta1';                                                         % a1 of size 5000*401, Theta1 of size 25*401, z2 of size 5000*25
a2 = sigmoid(z2);                                                        % a2 of size 5000*25
a2 = [ones(size(a2,1),1) a2];                                            % a2 of size 5000*26

z3 = a2*Theta2';                                                         % a2 of size 5000*26, Theta2 of size 10*26, z3 of size 5000*10
a3 = sigmoid(z3);                                                        % a3 of size 5000*10
h = a3;                                                                  % h of size 5000*10

% implement y vector
yVector = zeros(m,num_labels);                                           % yVector of size 5000*10
for i = 1:m
  yVector(i,y(i)) = 1;
endfor

J = (1/m) * sum(   sum(  ( -1*yVector.*log(h) ) - ( (1-yVector).*log(1-h) ) )   );

regSumK1 = sum(Theta1(:,2:size(Theta1,2)).^2);
regSumK2 = sum(Theta2(:,2:size(Theta2,2)).^2);
regSumJ1 = sum(regSumK1);
regSumJ2 = sum(regSumK2);
regularization = (lambda/(2*m)) * (regSumJ1+regSumJ2);

J = J + regularization;

% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%

for i = 1:m

  a1 = [1; X(i,:)'];                                                      % a1 is of size 401*1

  z2 = Theta1*a1;                                                         % Theta1 of size 25*401, a1 of size 401*1
  a2 = sigmoid(z2);                                                       % a2 of size 25*1
  a2 = [1; a2];                                                           % a2 of size 26*1

  z3 = Theta2*a2;                                                         % Theta2 of size 10*26, a2 of size 26*1, z3 of size 10*1
  a3 = sigmoid(z3);                                                       % a3 of size 10*1
  h = a3;                                                                 % h of size 10*1

  errorLayer3 = h - (yVector(i,:))';                                      % yVector of size 5000*10, yVector(i,:) of size 1*10, errorLayer3 of size 10*1                                %
  errorLayer2 = (Theta2'*errorLayer3) .* [1;sigmoidGradient(z2)];         % Theta2 of size 10*26, errorLayer3 of size 10*1, z2 of size 25*1, errorLayer2 of size 26*1
  errorLayer2 = errorLayer2(2:end,:);                                     % errorLayer2 of size 25*1

  Theta1_grad = Theta1_grad + errorLayer2 * a1';                          % errorLayer2 of size 25*1, a1 of size 401*1, Theta1_grad of size 25*401
  Theta2_grad = Theta2_grad + errorLayer3 * a2';                          % errorLayer3 of size 10*1, a2 of size 26*1, Theta2_grad of size 10*26

endfor

Theta1_grad = (1/m) * Theta1_grad;
Theta2_grad = (1/m) * Theta2_grad;

%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

Theta1_grad(:,2:end) = Theta1_grad(:,2:end) + (lambda/m) * Theta1(:,2:end);
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + (lambda/m) * Theta2(:,2:end);

% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
