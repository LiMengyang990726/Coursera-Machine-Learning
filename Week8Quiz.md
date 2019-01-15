## Week 8

### Highlights
1. Popular Unsupervised Learning algorithms:
- Clutering algorithms
  - K-means algorithms (can be used for both seperated dataset and non-seperated dataset)
- Dimensionality Reduction
  - Principle component analysis (different with linear regression, PCA is to minimize the projection error between x1 and x2, linear regression is to minimize the vertical error from x to y)

2. PCA process
- Data preprocessing (feature scaling/mean normalization): make each feature has exactly zero mean & make the range of different features roughly the same
- Compute the covariance matrix
- Compute the eigenvectors of covariance matrix, and take the first k columns from the U matrix (into a U<sub>reduced</sub>)
- z = U<sub>reduced</sub>' * x
- Choosing k by the smallest value smaller than or equal to the pre-determined threshold

3. PCA Application
- Data compression: save memory & speed up algorithms
- Visualization(usually then k = 2 or 3)
- Warning: PCA cannot prevent from overfitting

### Quiz1: Unsupervised Learning

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz1-1.png)

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz1-2.png)

**Explanation:**

> distance from [-1;2] to [1;2] = 2<sup>2</sup>+0 = 4

> distance from [-1;2] to [-3;0] = 2<sup>2</sup>+2<sup>2</sup> = 8

>distance from [-1;2] to [4;2] = 5<sup>2</sup>+0 = 25

> Thus, this training example will be assigned to crentroid 1.

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz1-3.png)

4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz1-4.png)

5.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz1-5.png)

### Quiz2: Principle Component analysis

1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-1-1.png)

**Answer:**

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-1-2.png)

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-1-3.png)

2.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-2.png)

3.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-2.png)

4.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-2.png)

5.


![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week8Quiz2-2.png)

**Explanation:**
> C) PCA is a technique used for unsupervised learning
