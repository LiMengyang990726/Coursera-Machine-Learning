## Week 3

### Highlights:

1. An advanced optimization algorithm (faster than gradient descent) is using `fminunc`

**Without Regularization**
```
function [jval,gradient] = costFunction(theta)
  jval =                % code to compute J(theta)
  gradient = zeros(2,1) % initialize a size for gradient
  gradient(1) =         % code to compute gradient1
  gradient(2) =         % code to compute gradient2

options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = zeros(2,1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);
```

**With Regularization**
```
function [jval,gradient] = costFunction(theta)
  jval =                                  % code to compute J(theta)
  gradient = zeros(2,1)                   % initialize a size for gradient
  gradient(1) =                           % code to compute gradient1
  gradient(2) =    +(lambda/m)*theta1     % code to compute gradient2
```

### Quiz1: Logstic Regression

1.Suppose that you have trained a logistic regression classifier, and it outputs on a new example x a prediction h<sub>
θ</sub>(x) = 0.7. This means (check all that apply):

**Answer:**

i) Our estimate for P(y=1∣x;θ) is 0.7.

ii) Our estimate for P(y=0∣x;θ) is 0.3.


2. Suppose you have the following training set, and fit a logistic regression classifier h<sub>θ</sub>(x)=g(θ<sub>0</sub>+θ<sub>1</sub>x<sub>1</sub>+θ<sub>2</sub>x<sub>2</sub>).







![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz1-2.png)

**Answer:**

i) Adding polynomial features could increase how well we can fit the training data.

ii) At the optimal value of θ (e.g., found by fminunc), we will have J(θ)≥0. (As a linear decision boundary could not perfectly fit the dataset)

3.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz1-3.png)

4. Which of the following statements are true? Check all that apply.

A) The cost function J(θ) for logistic regression trained with m≥1 examples is always greater than or equal to zero.

B) For logistic regression, sometimes gradient descent will converge to a local minimum (and fail to find the global minimum). This is the reason we prefer more advanced optimization algorithms such as fminunc (conjugate gradient/BFGS/L-BFGS/etc).

C) Since we train one classifier when there are two classes, we train two classifiers when there are three classes (and we do one-vs-all classification).

D) The one-vs-all technique allows you to use logistic regression for problems in which each y<sup>(i)</sup> comes from a fixed, discrete set of values.

**Answer:**

A) Correct.

B) Wrong. The reason of choosing advanced algorithms is because they don't need to choose alpha

C) Wrong. We need to train k classifier when there are k classes (k>1).

D) Correct.

5. Suppose you train a logistic classifier  h<sub>θ</sub>(x)=g(θ<sub>0</sub>+θ<sub>1</sub>x<sub>1</sub>+θ<sub>2</sub>x<sub>2</sub>).
Suppose θ<sub>0</sub>=6,θ<sub>1</sub>=−1,θ<sub>2</sub>=0. Which of the following figures represents the decision boundary found by your classifier?

**Answer:**



![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz1-5.png)
### Quiz2: Regularization

1. You are training a classification model with logistic

regression. Which of the following statements are true? Check

all that apply.

**Answer:**

A) Adding many new features to the model helps prevent overfitting on the training set.

> Wrong. This will lead to overfitting

B) Adding a new feature to the model always results in equal or better performance on the training set.

> Correct.

C) Introducing regularization to the model always results in equal or better performance on the training set.

> Wrong. Can lead to underfitting

D) Introducing regularization to the model always results in equal or better performance on examples not in the training set.

> Wrong. Underfitting will lead to worse performance on examples not in the training set.

2.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-2.png)

**Answer:** As when lambda = 1, we add the regularization term which will penalize when theta is big. Thus, when lambda = 1, theta will be relatively smaller than without regularization.

3. Which of the following statements about regularization are

true? Check all that apply.

**Answer:**

A) Consider a classification problem. Adding regularization may cause your classifier to incorrectly classify some training examples (which it had correctly classified when not using regularization, i.e. when λ=0).

> Correct.

B) Because logistic regression outputs values 0 ≤h<sub>θ</sub>(x)≤1, its range of output values can only be "shrunk" slightly by regularization anyway, so regularization is generally not helpful for it.

> Wrong.

C) Using a very large value of λ cannot hurt the performance of your hypothesis; the only reason we do not set λ to be too large is to avoid numerical problems.

> Wrong. Very large λ can lead to underfitting problem.

D) Using too large a value of λ can cause your hypothesis to overfit the data; this can be avoided by reducing λ.

> Wrong. Very large λ leads to underfitting problem.

4.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-4-1.png)

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-4-2.png)

**Answer:**


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-4-3.png)

5.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-5-1.png)

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-5-2.png)

**Answer:**

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week3Quiz2-5-3.png)
