library(caret)
library(corrplot)
library(smotefamily)
#importing the data set
#creditcardFraud<-read.csv("C:\Users\Emmanuel\Desktop\Study Materials\Project\Predicting Credit Card Fraud with R\Predict Credit Card Fraud\creditcardFraud.csv")

creditcardFraud$class=as.factor(creditcardFraud$class)
# Tast 2
```{r}
#A Structure of the dataset
str(creditcardFraud)

#B Missing Data?
sum(is.na(creditcardFraud))

#C Check the imbalance in the dataset
summary(creditcardFraud$class)
prop.table(table(creditcardFraud$class))

#D Compile histogram for each variable
par(mfrow = c(3,5)) #Change setting to view 3x5 charts
i <- 1
for (i in 1:30) 
{hist((creditcardFraud[,i]), main = paste("Distibution of ", colnames(creditcardFraud[i])), xlab = colnames(creditcardFraud[i]), col = "light blue")
}

#E Compute the correlation among the variables
r=cor(creditcardFraud[,1:30])
corrplot(r,type="lower",tl.col="black",tl.srt = 15)
```

## Task 3 Split the data into training and testing data

