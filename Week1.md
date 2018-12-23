## Week 1

### Quiz 1

1. A computer program is said to learn from experience E with respect to some task T and some performance measure P if its performance on T, as measured by P, improves with experience E.
Suppose we feed a learning algorithm a lot of historical weather data, and have it learn to predict weather. What would be a reasonable choice for P?

**Answer:** The probability of it correctly predicting a future date's weather.

2. The amount of rain that falls in a day is usually measured in either millimeters (mm) or inches. Suppose you use a learning algorithm to predict how much rain will fall tomorrow. Would you treat this as a classification or a regression problem?

**Answer:** Regression

3. Suppose you are working on stock market prediction. You would like to predict whether or not a certain company will declare bankruptcy within the next 7 days (by training on data of similar companies that had previously been at risk of bankruptcy). Would you treat this as a classification or a regression problem?

**Answer:** Classification

4. Some of the problems below are best addressed using a supervised learning algorithm, and the others with an unsupervised learning algorithm. Which of the following would you apply supervised learning to? (Select all that apply.) In each case, assume some appropriate dataset is available for your algorithm to learn from.

**Answer:** Given genetic (DNA) data from a person, predict the odds of him/her developing diabetes over the next 10 years.

5. Which of these is a reasonable definition of machine learning?

**Answer:** Machine learning is the field of study that gives computers the ability to learn without being explicitly programmed.

### Quiz 2

1. Consider the problem of predicting how well a student does in her second year of college/university, given how well she did in her first year. Specifically, let x be equal to the number of "A" grades (including A-. A and A+ grades) that a student receives in their first year of college (freshmen year). We would like to predict the value of y, which we define as the number of "A" grades they get in their second year (sophomore year).

| x | y|
| ------ | ------ | ------ |
| 3 | 2 |
| 1 | 2 |
| 0 | 1 |
| 4 | 3 |

Here each row is one training example. Recall that in linear regression, our hypothesis is hθ(x)=θ0+θ1x, and we use mmm to denote the number of training examples.

For the training set given above (note that this training set may also be referenced in other questions in this quiz), what is the value of mmm? In the box below, please enter your answer (which should be a number between 0 and 10).

**Answer:** m = 4

2. Consider the following training set of m=4 training examples:

| x | y|
| ------ | ------ | ------ |
| 1 | 0.5 |
| 2 | 1 |
| 4 | 2 |
| 0 | 0 |

Consider the linear regression model hθ(x)=θ0+θ1x​ that you would expect to obtain upon running gradient descent on this model? (Linear regression will be able to fit this data perfectly.)

**Answer:** θ0​=0,θ1​=0.5

3. Suppose we set θ0=−1,θ1=0.5. What is hθ(4)?

**Answer:** 1

4. Let fff be some function so that f(θ0,θ1) outputs a number. For this problem, f is some arbitrary/unknown smooth function (not necessarily the cost function of linear regression, so f may have local optima).
Suppose we use gradient descent to try to minimize f(θ0,θ1)
as a function of θ0 and θ1. Which of the
following statements are true? (Check all that apply.)

**Answer:** If the learning rate is too small, then gradient descent may take a very long time to converge.

If θ0 and θ1 are initialized at
a local minimum, then one iteration will not change their values.

5. Suppose that for some linear regression problem (say, predicting housing prices as in the lecture), we have some training set, and for our training set we managed to find some θ0, θ1​ such that J(θ0,θ1)=0J(θ0​,θ1​)=0.
Which of the statements below must then be true? (Check all that apply.)

**Answer:** Our training set can be fit perfectly by a straight line,
i.e., all of our training examples lie perfectly on some straight line.

### Quiz 3

1. A = [1 , -4 ; -2 , 1], B = [0 , 3 ; 5 , 8], A + B = ?

**Answer:** [1 , -1 ; 3 , 9]

2. Let x = [5 ; 5 ; 2 ; 7], 2 * x = ?

**Answer:** [10 ; 10 ; 4 ; 14]

3. Let u be a 3-dimensional vector, where specifically u = [8 ; 1 ; 4]. What is the transpose of u?

**Answer:** [8 , 1 , 4]

4. Let u and v be 3-dimensional vectors, where specifically u = [4 ; -4 ; -3], v = [4 ; 2 ; 4]. What is the result of the transpose of u times v?

**Answer:** -4

5. Let A and B be 3x3 (square) matrices. Which of the following
must necessarily hold true? Check all that apply.

**Answer:** A+B=B+A ; If A is the 3x3 identity matrix, then A * B = B * A A∗B=B∗A
