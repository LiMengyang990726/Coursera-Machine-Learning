## Week 6

### Highlights

1. Model Seclection - Evaluating Hypothesis

- Splitting the training set into a training set & validation set & a test set
- Learn theta from training set
- Get the cost using corresponding cost function from validation set / Or use the misclassfication matrix
- Then pick the hypothesis with the lowest cross validation error

Model Selection - Selecting regularization term

- Try lambda from 0 to 10 (0, 0.1, 0.4, 0.8,...)
- Get the cost using corresponding cost function from validation set
- Pick the one with the lowest cross validation error, then evaluate using the test set

2. Learning Curve conclusions:
- A model with high bias (Underfitting/J<sub>cv</sub>&J<sub>train</sub> is high): the accuracy will not increase as feeding more data to the model
- A model with high variance (Overfitting/J<sub>cv</sub> is high J<sub>train</sub> is low): the accuracy will increase as feeding more data to the model

3. Useful decisions:
- Getting more training examples: Fixes high variance
- Trying smaller sets of features: Fixes high variance
- Adding features: Fixes high bias
- Adding polynomial features: Fixes high bias
- Decreasing λ: Fixes high bias
- Increasing λ: Fixes high variance.

## Quiz1: Advice for Applying Machine Learning

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week6Quiz1-1.png)

**Explanation:**
> As test error and train error got flattened when m becomes larger, while the platform has larger value than expected.

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week6Quiz1-2.png)

**Explanation:**
> The model has high variance. To reduce the variance, can choose to reduce number of features or feed more data (from learning curve).

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week6Quiz1-3.png)

**Explanation:**
> The model has high bias (Underfitting). To reduce the bias, can choose to add number of features or decrease the regularization term.

4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week6Quiz1-4.png)

**Explanation:**
> A) Should not use test set in choosing regularization parameter.

> B) Correct.

> C) Correct.

> D) Should seperately train the train set, verify on the cross validation set and test set.

5. Which of the following statements are true? Check all that apply.

A) If a learning algorithm is suffering from high bias, only adding more training examples will not improve the test error significantly.

B) If a learning algorithm is suffering from high bias, adding more features is likely to improve the test error.

C) When debugging learning algorithms, it is useful to plot a learning curve to understand if there is a high bias or high variance problem.

D) We always prefer models with high variance (over those with high bias) as they will be able to better fit the training set.

**Explanation:**

> A) Correct, known from the learning curve (flattened).

> B) High variance -> overfitting -> adding features will not help

> C) Correct.

> D) Wrong.
