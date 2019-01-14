## Week 7

### Highlights:

1. Popular Supervised Learning Algorithms
- Linear regression
- Logistic regression (simple classfication)
- Neural Networks (complex non-linear functions)
- Support Vector Machine: provides a large margin to seperate classes (complex non-linear functions)

> Question: What's the usage difference between NN and SVM?

2. SVM with Kernals
- **Kernals:** Can understand as Similarity function, and perticularly kernals go well with SVM not with other algorithms like logistic regression.

  Choices:
    - No kernal (linear kernal = logistic regression): when n is large, m is small
    - Guassian kernal: when n is small, m is large
    - Polynomial kernal
    - String kernal: when the input is text
    - ...

  Prerequisite:
    - Kernals must satisfy Mercer's theorem

  Choicing conditions:
    - n >> m: logistic / SVM without a kernal
    - n is small, m is intermediate: SVM with Guassian kernal
    - n << m: logistic / SVM without a kernal
    - NN works for all cases, but slower
- Hypothesis: compute f (f<sup>(i)</sup><sub>m</sub>=similarity(x<sup>(i)</sup>,l<sup>(m)</sup>))

    Predict 1 if theta<sup>T</sup> * f >= 0
- Training: minimize the new cost function for SVM
- A change on the regularizated cost term allows SVM to run more efficiently on larger dataset.
- SVM Parameters: C(=1/lambda), sigmaSquare(larger value, smoother, underfitting, higher bias; lower value, sharper, overfitting, higher variance)

### Quiz1

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-1.png)

**Answer:**

It would be reasonable to try decreasing C. It would also be reasonable to try increasing σ<sup>2</sup>.

> This decision boundary overfits the trainning dataset. We need to increase the regularization term, that is to decrease C. And we need the kernal to be smoother, that is to increase σ<sup>2</sup>

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-2(1).png)

**Answer:**

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-2(2).png)

When σ<sup>2</sup> is decreased, the kernal looks less smoother.

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-3.png)

**Answer:**

SVM requires a more precise boundary.

4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-4.png)

**Answer:**

> A) We have n = 10 (small), m = 5000 (intermediate), using SVM with Guassian kernal is reasonable.

> B) <I choose this wrongly> As now the model is underfitting the kernal, thus decreasing the regulatization term will help.

> D) As now the model is underfitting the kernal, thus more features will help.

5.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week7Quiz1-5.png)

JbhInZzjhgwHnpET
