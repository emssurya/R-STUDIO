library(rpart)
library(rpart.plot)

data(iris)
head(iris)

set.seed(123)

# Create train-test split (70% train, 30% test)
sample_index <- sample(1:nrow(iris), 0.7 * nrow(iris))

train_data <- iris[sample_index, ]
test_data  <- iris[-sample_index, ]

# Build Decision Tree model
dt_model <- rpart(Species ~ ., data = train_data, method = "class")

print(dt_model)

# Plot the tree
rpart.plot(dt_model, 
           type = 3, 
           extra = 101, 
           fallen.leaves = TRUE, 
           main = "Decision Tree For Iris Dataset")

# Make predictions
predictions <- predict(dt_model, test_data, type = "class")

# Calculate accuracy
Accuracy <- sum(predictions == test_data$Species) / nrow(test_data)

cat("Model Accuracy:", round(Accuracy * 100, 2), "%\n")

cat("\nConfusion Matrix:\n")
print(table(Predicted = predictions, Actual = test_data$Species))
