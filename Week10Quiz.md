## Week 10

### Highlights
1. Techniques When Dealing with large dataset
- Gradient descent
  - Batch: compute all training examples at a time
  - Stochastic: first randomly reshuffle the dataset, then repeat compute the cost function for each training example, that is try to minimize the cost upon each iteration for each training example instead of computing all the examples at a time. Repeat the second step 1-10 times. **Note:** SGD may not give a global minimum finally and it's just meandering about the global minimum, to have a higher chance of getting closer to the global minimum, we can tune the learning rate smaller with every iteration.
  - Mini batch gradient descent (sometimes faster than SGD): use b (mini batch size) in each iteration (In-between), this can be sometimes faster than SGD as it can have a good vectorized implementation
- Online learning (when we are having a continuous stream of data coming in)  
  - Can adapt to changing of user preferences (real-time)
  - Look at the data once at a time and then discard it, learn continuously
  - E.g. according to which link user clicked, show the products that users most likely to click on
- Map Reduce (run the ml problem in several machines)
  - Split the training set into several machines/several cores of a single machine (less network latency)
  - All the results will be sent to a master machine to combine them together

### Quiz: Large Scale Machine Learning
1.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week10Quiz1-1.png)

2.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week10Quiz1-2.png)

3.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week10Quiz1-3.png)


4.

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week10Quiz1-4.png)

**Explanation:**
> C) D) are using SGD, which already deceased the computational power required, thus we don't need to apply map reduce techniques to them again.

5. 

![](https://github.com/LiMengyang990726/Coursera-Machine-Learning/blob/master/Pictures/Week10Quiz1-5.png)
