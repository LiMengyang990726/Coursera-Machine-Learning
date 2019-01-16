## Week 9

### Highlights

1. Anomaly detection algorithm (Unsupervised learning)
- Make use of the Gaussian distribution if you suspect that the dataset comes from a Gaussian distribution, compute the Gaussian distribution parameters for each feature
- Treat all parameters as independent events, get p(x) from the multiply combination of all features' Gaussian distribution

2. To evaluate an anomaly detection algorithm
- Assume we have labeled data (evaluate in a supervised way)
- Fit the model on the training set
- Evaluate on the cross validation set/test set according to the F1 score
- Pick the epsilon that gives the best F1 score

3. Anomaly detection algorithm VS supervised learning algorithm
- Anomaly detection algorithm: Small number of positive examples and a large number of negative examples; Supervised learning algorithm: Large number of positive and negative examples
- Anomaly detection algorithm: many types of anomalies (a totally new type of anomaly is possible); Supervised learning algorithm: future positive examples are likely to be the same type that the training data have

4. Applications of Anomaly detection algorithm
- Fraud detection
- Manufacturing (aircraft quality)
- Monitor machines in a data center

5. Multivariate Gaussian Distribution
- P(x) ~ Multivariate Gaussian(mu, sigma) where sigma is the covariance matrix, such that we will be able to capture an ellipse shape of cluster (towards any direction)

### Quiz1: Anomaly Detection

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week9Quiz1-1.png)

**Explanation:**
> Number of types for transactions and diseases is countable and predictable. Thus should use a clustering algorithm

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week9Quiz1-2.png)

**Explanation:**
> Increase the threshold so that we will have a large range for detecting anomalies.

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week9Quiz1-3.png)

4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week9Quiz1-4.png)

**Explanation:**
> A) Correct.

> B) Usually we will have a skewed dataset for anomaly detection, thus accuracy may not be a good matrix to represent the model performance.

> C) Usually we have lots of normal training examples, and a few anomaly examples.

> D) Correct.

5.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week9Quiz1-5.png)
