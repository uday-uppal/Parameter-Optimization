library(kernlab)
library(caret)
bestAccuracy = 0
bestkernel = "rbfdot"
bestNu = 0 # [0,1]
bestEpsilon = 0 # [0,1]
iteration = 10
kernelList = c('rbfdot', 'polydot', 'vanilladot', 'tanhdot', 'laplacedot', 'anovadot') 
best_training_data=data.frame()
best_testing_data=data.frame()
best_accuracy_vector=c()
fitnessFunction <- function(k, n, e, trainDataset, testDataset) {
  formula <- Revenue ~ .
  model <- ksvm(formula, data = trainDataset, kernel = k, nu = n, epsilon = e)
  predicted <- round(predict(model, newdata = testDataset))
  actual <- testDataset$Revenue  # replace "y" with the name of your target variable
  accuracy <- round(mean(actual == predicted) * 100, 2)
  return(accuracy)
}

my_data=read.csv("online_shoppers_intention.csv",header = TRUE)

# Specify the formula for one-hot encoding
formula <- as.formula(paste("~", paste(names(my_data)[-1], collapse = " + ")))
one_hot_transformer <- dummyVars(formula, data = my_data)
one_hot_df <- as.data.frame(predict(one_hot_transformer, newdata = my_data))
my_data <- one_hot_df
my_data$RevenueFALSE=NULL
names(my_data)[ncol(my_data)]="Revenue"
for(j in 1: 10){
  set.seed(j)  
  train_index <- createDataPartition(my_data$Revenue, p = 0.7, list = FALSE)
  training_data <- my_data[train_index, ]
  testing_data <- my_data[-train_index, ]
  accuracy_vector=c()
  flag=FALSE
  for(i in 1:iteration){
  k = sample(kernelList, 1)
  n = sample(runif(1),1)
  e = sample(runif(1),1)
  accuracy = fitnessFunction(k,n,e,training_data,testing_data)
  accuracy_vector=append(accuracy_vector,accuracy)
  if(accuracy > bestAccuracy){
    bestkernel = k
    bestNu = n
    bestEpsilon = e
    bestAccuracy = accuracy
    best_training_data=training_data
    best_testing_data=testing_data
    flag=TRUE
  }
  
  }
  if(flag==TRUE){
    best_accuracy_vector=accuracy_vector
  }
}
plot(1:iteration,best_accuracy_vector)
