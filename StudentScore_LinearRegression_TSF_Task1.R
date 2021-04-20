#Task 1 - Problem Statement -Predict the percentage of a student based on the no. of study hours

library(gridExtra) 

# Load the .csv file
stud_score<-read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
View(stud_score)

#Summary of the data set
summary(stud_score)

#Structure of the dataset
str(stud_score)
#One variable of type numeric and another of type int

#Histogram to see the trend between the variables
hist(stud_score$Hours,xlab="Hours",ylab = "Frequency",col = "orange",main = "Histogram") 
hist(stud_score$Scores,xlab="Scores")


#To see the normality of the data points
qqnorm(stud_score$Scores)
qqline(stud_score$Scores) #Almost all the points fall along line, so we can assume normality
qqnorm(stud_score$Hours)
qqline(stud_score$Hours) #Almost all the points fall along line, so we can assume normality

#To see the trend 
plot(stud_score,main='Scores vs Hours',col='blue') # shows a linear relation

#Correlation between 2 variables
cor(stud_score) # shows extreme positive correlation

#Perform Linear Regression model
#Score being the dependent or target variable and Hours is the predictor or independent variable.


set.seed(10)
train_index<-sample(1:nrow(stud_score), 0.75*nrow(stud_score))
test_index<-setdiff(1:nrow(stud_score),train_index)
train_data<-stud_score[train_index,]
test_data<-stud_score[test_index,]
model<-lm(Scores~Hours,data=train_data)
summary(model)
plot(model)


#From the results , its evident that the intercept is 5.0802 and the P value of hours is less than 0.05 at 95 % confidence interval.
# Adjusted R Square value is 0.968 with 16 degrees of freedom. Since the Adjusted square value is close to 1 it shows better goodness of fit.
# Linear Regression can be expressed as y=ax+b
# Scores = 5.0802 + 9.4972 * Hours
#If Hours = 9.25 hrs/day , then Scores = 5.0802 + 9.4972 * 9.25

Scores1<-5.0802 + 9.4972 * 9.25
Scores1

#Scores = 92.92

