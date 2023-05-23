library(MASS)
data(package="MASS")
boston<-Boston
install.packages("gbm")
require(gbm)
library(gbm)
boost.boston = gbm(medv~., data = boston[train,], distribution =
                     "gaussian", n.trees = 10000, shrinkage = 0.01, interaction.depth = 4)
summary(boost.boston)
plot(boost.boston,i="lstat")
plot(boost.boston,i="rm")
