## Week 2

### Highlights

- Tricks for improving gradient descend

1. Feature scaling and mean normalization

2. Scrutinize the learning rate graph (Cost function and number of iterations):

  - If J(theta) is decreasing, normal
  - If J(theta) is increasing, use smaller alpha
  - If J(theta) is increasing and decreasing alternatively, use smaller alpha

### Quiz: Linear Regression with Multiple Variables

1. ![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week2Quiz1-1.png)

**Answer:** mean = (7921+5184+8836+4761)/4 = 6675.5

deviation = 8836-4761 = 4075

normalized x<sub>2</sub><sup>(4)</sup> = (4761-6675.5) / 4075 = -0.50

2. You run gradient descent for 15 iterations
with α=0.3 and compute
J(θ) after each iteration. You find that the
value of J(θ) decreases quickly then levels
off. Based on this, which of the following conclusions seems
most plausible?

**Answer:** α=0.3 is an effective choice of learning rate.

3. Suppose you have m = 28 training examples with n = 4 features (excluding the additional all-ones feature for the intercept term, which you should add). The normal equation is theta = (X^T X)^{-1} X^T yθ. For the given values of m and n, what are the dimensions of θ, X, and y in this equation?

**Answer:** X is 28×5, y is 28×1, θ is 5×1

4. Suppose you have a dataset with m = 1000000 examples and n = 200000 features for each example. You want to use multivariate linear regression to fit the parameters θ to our data. Should you prefer gradient descent or the normal equation?

**Answer:** Gradient descent, since (X^T X)^{-1} will be very slow to compute in the normal equation.

5. Which of the following are reasons for using feature scaling?

**Answer:** It speeds up gradient descent by making it require fewer iterations to get to a good solution.

### Quiz: Octave/Matlab Tutorial

1. Suppose I first execute the following Octave/Matlab commands:

A = [1 2; 3 4; 5 6];


B = [1 2 3; 4 5 6];

Which of the following are then valid commands? Check all that apply. (Hint: A' denotes the transpose of A.)

**Answer:**

i) C = A * B: As A is of dimension 3*2, B is of dimension 2*3, A*B works

ii) C = B' + A: As B transpose is of dimension 3*2, A is of dimension 3*2, B'+A works

2. ![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week2Quiz2-2.png)

**Answer:**

i) B = A(:, 1:2);

ii) B = A(1:4, 1:2);

3. Let A be a 10x10 matrix andxx be a 10-element vector. Your friend wants to compute the product AxAx and writes the following code:
```
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end
```

How would you vectorize this code to run without any for loops? Check all that apply.

**Answer:**

i) v = A * x;

ii) v = x' * A;

4. Say you have two column vectors v and w, each with 7 elements (i.e., they have dimensions 7x1). Consider the following code:
```
z = 0;
for i = 1:7
  z = z + v(i) * w(i)
end
```

Which of the following vectorizations correctly compute z? Check all that apply.

**Answer:**

i) z = sum (v .* w);

ii) z = v' * w;

5. In Octave/Matlab, many functions work on single numbers, vectors, and matrices. For example, the sin function when applied to a matrix will return a new matrix with the sin of each element. But you have to be careful, as certain functions have different behavior. Suppose you have an 7x7 matrix X. You want to compute the log of every element, the square of every element, add 1 to every element, and divide every element by 4. You will store the results in four matrices, A, B, C, D. One way to do so is the following code:
```
for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end
```
Which of the following correctly compute A, B, C, D? Check all that apply

**Answer:**

i) B = X.^2

ii) C = X+1

iii) D = X/4
