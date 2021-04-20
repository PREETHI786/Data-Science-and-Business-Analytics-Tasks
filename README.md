# Data-Science-and-Business-Analytics-Tasks

Task 1 - Problem Statement -Predict the percentage of a student based on the no. of study hours

Prediction using Supervised ML - Linear Regression
Simple Linear Regression is used to find the relationship between 2 continuous variables. One is predictor or independent variable and other is response or dependent variable. We have a dataset with 2 variables Scores and Hours. We are supposed to predict the score based on hours. In this case Scores will become dependent or response variable and Hours become independent or predictor variable.Using the training data, a regression line is obtained which will give minimum error. This linear equation is then used for any new data. That is, if we give number of hours studied by a student as an input, our model should predict their mark with minimum error.
Y(pred) = b0 + b1*x


Task 2 - Predict the optimum number of clusters and represent it visually. 

Prediction using Unsupervised ML - K means clustering algorithm
K-Means Clustering is an unsupervised learning algorithm that is used to solve the clustering problems in machine learning or data science.Here K defines the number of pre-defined clusters that need to be created in the process, as if K=2, there will be two clusters, and for K=3, there will be three clusters, and so on. It is a centroid-based algorithm, where each cluster is associated with a centroid. The main aim of this algorithm is to minimize the sum of distances between the data point and their corresponding clusters.

The algorithm takes the unlabeled dataset as input, divides the dataset into k-number of clusters, and repeats the process until it does not find the best clusters. The value of k should be predetermined in this algorithm.

The k-means clustering algorithm mainly performs two tasks:

Determines the best value for K center points or centroids by an iterative process.
Assigns each data point to its closest k-center. Those data points which are near to the particular k-center, create a cluster.
