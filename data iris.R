# Load library
library(e1071)

# Load dataset
data(iris)

# View first rows
head(iris)

# Set seed for reproducibility
set.seed(123)

# Split data (70% training, 30% testing)
sample_index <- sample(1:nrow(iris), 0.7 * nrow(iris))

train_data <- iris[sample_index, ]
test_data  <- iris[-sample_index, ]

# Train Naive Bayes model
nb_model <- naiveBayes(Species ~ ., data = train_data)

# Display model summary
print(nb_model)

# Predict on test data
predictions <- predict(nb_model, test_data)

# Calculate accuracy
accuracy <- mean(predictions == test_data$Species)

cat("Accuracy:", round(accuracy * 100, 2), "%\n")

# Confusion matrix
conf_matrix <- table(Predicted = predictions, Actual = test_data$Species)

print(conf_matrix)