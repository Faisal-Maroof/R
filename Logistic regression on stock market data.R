require(ISLR)
names(Smarket)
head(Smarket)
summary(Smarket)

par(mfrow=c(1,1))
for(i in 1:1) {
  hist(Smarket[,i], main=names(Smarket)[i])
}

par(mfrow=c(1,1))
for(i in 1:1){
  boxplot(Smarket[,i], main=names(Smarket)[i])
}

library(Amelia)
library(mlbench)
missmap(Smarket, col=c("blue","red"), legend=FALSE)

library(corrplot)
correlations <- cor(Smarket[,1:8])
corrplot(correlations, method="circle")

pairs(Smarket, col=Smarket$Direction)

library(caret)
x <- Smarket[,1:1]
y <- Smarket[,9]
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)


#logistic regression
glm.fit <- glm(Direction ~ Lag1 +Lag2 +Lag3 +Lag4 +Lag5 +Volume, data = Smarket, family = binomial)
summary(glm.fit)

glm.probs <- predict(glm.fit, type = "response")
glm.probs[1:5]

glm.pred <- ifelse(glm.probs >0.5, "Up", "Down")
attach(Smarket)
table(glm.pred,Direction)

mean(glm.pred == Direction)

#make training and test set

train = Year<2005
glm.fit <- glm(Direction ~ Lag1 +Lag2 +Lag3 +Lag4 +Lag5 +Volume, data = Smarket, family = binomial, subset = train)
glm.probs <- predict(glm.fit, newdata = Smarket[!train,], type = "response")
glm.pred <- ifelse(glm.probs >0.5, "Up", "Down")

Direction.2005 = Smarket$Direction[!train]
table(glm.pred == Direction.2005)

# fit a smaller Model

glm.fit = glm(Direction ~ Lag1 +Lag2 +Lag3 , data = Smarket, family = binomial, subset = train)
glm.probs = predict(glm.fit, newdata = Smarket[!train,], type = "response")
glm.pred = ifelse(glm.probs >0.5, "up", "Down")
table(glm.pred, Direction.2005)

mean(glm.pred == Direction.2005)
summary(glm.fit)