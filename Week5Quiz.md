## Week5

### Highlights:

1. Matrix to Vector & Vector to Matrix

- When we are using the vectorized implementation, like `X * Theta'`, that is most of the cases, we will need the Matrix form of both Theta and D

- When we are using advanced optimization algorithms, like `fminunc`, we need to pass in the parameter as a vector
That is  
```
initialTheta = [Theta1(:);Theta2(:);Theta3(:)]               % get matrix into a vector
... = fminunc[@costFunction, initialTheta, ...]

function[J, grad] = costFunction(ThetaVector)
Theta1 = reshape(ThetaVector(rowStart:rowEnd), row, column)  % get vector into a matrix
...
grad = [grad1(:);...]                                        % get matrix into a vector again
```

2. Gradient Checking

- This is to ensure that the backpropogation is working properly.
- This is done using numerical method:
```
epsilon = 1e-4;
for i = 1:n,
  thetaPlus = theta;
  thetaPlus(i) += epsilon;
  thetaMinus = theta;
  thetaMinus(i) -= epsilon;
  gradApprox(i) = (J(thetaPlus) - J(thetaMinus))/(2*epsilon)
end;
```
- Be sure to turn off gradient checking before actual learning.

3. Random Initialization of Theta

- Initialize to all zero might give the problem of **Symmetric breaking** redundant feature i.e. identical hidden units.

```
Theta1 = rand(row,col) * (2*INIT_EPSILON) - INIT_EPSILON;
```

4. The process for Neural Networks

- Randomly initialize weights
- Forward propogation to get h<sub>theta</sub>(x)
- Compute cost function J(theta)
- Backward propogation to get partial derivatives (usually use a for-loop, loop through m examples)
- Compare the partial derivatives with the numerical method using gradient checking, then disable gradient checking
- Minimize J(theta) with gradient descent / advanced optimization algorithms

### Quiz1: Neural Networks：Learning

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week5Quiz1-1.png)

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week5Quiz1-2.png)

**Explanation:**

Theta1 takes from row 1 to row 15(3*5), thus Theta2 will be from 16 to 39.(16 + 4*6 -1)

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week5Quiz1-3.png)

**Explanation:**

J(θ+ϵ) = 2*(1.01)<sup>4</sup> + 2 = 4.08120802
J(θ−ϵ) = 2*(0.99)<sup>4</sup> + 2 = 3.92119202
(J(θ+ϵ) - J(θ−ϵ))/ 2ϵ = 8.0008

4. Which of the following statements are true? Check all that apply.

**Answer:**

A) Using a large value of λ cannot hurt the performance of your neural network; the only reason we do not set λ to be too large is to avoid numerical problems.

> Wrong. Large λ will underfit the hypothesis as the regularization term is too significant.

B) Using gradient checking can help verify if one's implementation of backpropagation is bug-free.

> Correct.

C) If our neural network overfits the training set, one reasonable step to take is to increase the regularization parameter λ.

> Correct.

D) Gradient checking is useful if we are using gradient descent as our optimization algorithm. However, it serves little purpose if we are using one of the advanced optimization methods (such as in fminunc).

> Wrong. Gradient checking is useful to check if the backward propogation is bug-free, and both advanced optimization methods and gradient descent will use backward propogation.

5. Which of the following statements are true? Check all that apply.

**Answer:**

A) Suppose we are using gradient descent with learning rate α. For logistic regression and linear regression, J(θ) was a convex optimization problem and thus we did not want to choose a learning rate α that is too large. For a neural network however, J(Θ) may not be convex, and thus choosing a very large value of α can only speed up convergence.

> Wrong.

B) Suppose we have a correct implementation of backpropagation, and are training a neural network using gradient descent. Suppose we plot J(Θ) as a function of the number of iterations, and find that it is increasing rather than decreasing. One possible cause of this is that the learning rate α is too large.

> Correct.

C) Suppose that the parameter Θ(1) is a square matrix (meaning the number of rows equals the number of columns). If we replace Θ
(1) with its transpose (Θ(1))<SUP>T</SUP>, then we have not changed the function that the network is computing.

> Wrong.

D) If we are training a neural network using gradient descent, one reasonable "debugging" step to make sure it is working is to plot J(Θ) as a function of the number of iterations, and make sure it is decreasing (or at least non-increasing) after each iteration.

> Correct.
