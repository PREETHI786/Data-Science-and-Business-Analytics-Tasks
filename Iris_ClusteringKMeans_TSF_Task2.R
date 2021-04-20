#Task 2 - Predict the optimum number of clusters and represent it visually. 


install.packages("remotes")
remotes::install_github("vqv/ggbiplot",force = TRUE)
library(ggbiplot)
library(ggplot2)
library(gridExtra)

#Loading the dataset
data("iris")

summary(iris)

str(iris) # all the variables are of type numeric except for Species which is categorical

#To see scatterplots

plot1 <- iris%>% 
  ggplot(aes(x = "Species", y = Sepal.Length)) + 
  geom_jitter(width = .025, height = 0.5, size = 2, alpha = .5, color = "blue") +
  labs(x = "", y="Sepal Length")

plot2 <- iris%>% 
  ggplot(aes(x = "Species", y = Sepal.Width)) + 
  geom_jitter(width = .025, height = 0.5, size = 2, alpha = .5, color = "red") +
  labs(x = "", y="Sepal Width")

plot3 <- iris%>% 
  ggplot(aes(x = "Species", y = Petal.Length)) + 
  geom_jitter(width = .025, height = 0.5, size = 2, alpha = .5, color = "green") +
  labs(x = "", y=" Petal Length")

plot4 <- iris%>% 
  ggplot(aes(x = "Species", y = Petal.Width)) + 
  geom_jitter(width = .025, height = 0.5, size = 2, alpha = .5, color = "pink") +
  labs(x = "", y="Petal Width")

#Viewing all plots together
grid.arrange(plot1, plot2, plot3, plot4) # Based on Petal.length , 2 clusters can be seen from the plot.

#To view clusters based on species
ggplot(iris, aes(Petal.Length, Petal.Width)) + geom_point(aes(col=Species), size=4) # from the plot 3 clusters can be seen

#K-means algorithm with centers=3
set.seed(123)

# The nstart parameter indicates that we want the algorithm to be executed 20 times.
# This number is not the number of iterations, it is like calling the function 20 times and then
# the execution with lower variance within the groups will be selected as the final result.
cluster<-kmeans(iris[1:4], centers = 3, nstart = 20)

cluster 
#Each column has 3 clusters with each cluster of Sepal.Length having mean value of 5.9,6.85,5.00 respectively.
#Total Withinss is 88.4%

#Visualizing the clusters
library(factoextra)
plot(cluster,cex=0.5)
fviz_cluster(cluster, data = iris[1:4],
             palette = c("#2E9FDF", "#00AFBB", "#E7B800"), 
             geom = "point",
             ellipse.type = "convex", 
             ggtheme = theme_bw())
