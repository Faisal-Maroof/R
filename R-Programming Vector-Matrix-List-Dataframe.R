#for making vector
a<-c('Grapes','Apple','Banana')
a
class(a)
#for making list
a<-list(c('Grapes','Apple','Banana'))
a
print(a)
#creation of Array
a<-array(c('Grapes','Apple','Banana'),dim = c(3,3))
print(a)
#For creation of DataFrame
BMI<- data.frame(
  gender=c('Male','Male','Female'),
  height=c(152,171.5,165),
  weight=c(81,93,78),
  Age=c(42,38,26)
)
print(BMI)
class(BMI)
