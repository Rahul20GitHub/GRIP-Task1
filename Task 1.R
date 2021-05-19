library(ggplot2)

Data = read.csv(file.choose())

#Creating the linear regression model
model = lm(Scores~Hours, data = Data)

#Plotting the regression model
ggplot( model,aes(Hours,Scores)) + geom_point() + stat_smooth(method = lm)

#Creating the prediction parameter
new.Hours = data.frame(Hours = 9.25)

#Doing the prediction in 95% Confidence interval
predict(model, newdata = new.Hours)

#So as per the prediction a student studying 9.25 hrs a day should score around
#92.9