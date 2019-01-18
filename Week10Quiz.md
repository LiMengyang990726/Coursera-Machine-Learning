## Week 10

### Highlights
1. Techniques When Dealing with large dataset
- Gradient descent
  - Batch: compute all training examples at a time
  - Stochastic: first randomly reshuffle the dataset, then repeat compute the cost function for each training example, that is try to minimize the cost upon each iteration for each training example instead of computing all the examples at a time. Repeat the second step 1-10 times.
  - Mini batch gradient descent (sometimes faster than SGD): use b (mini batch size) in each iteration (In-between), this can be sometimes faster than SGD as it can have a good vectorized implementation
