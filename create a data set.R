set.seed(123)

height <- rnorm(50, mean = 170, sd = 10)
weight <- rnorm(50, mean = 70, sd = 5)

my_data <- data.frame(Height = height, Weight = weight)

print("First few rows of the dataset:")
print(head(my_data))

print("Descriptive statistics:")
print(summary(my_data))

group1 <- my_data$Height[1:25]
group2 <- my_data$Height[26:50]

t_test_result <- t.test(group1, group2)

print("T-test for comparing means of 'Height' between two groups:")
print(t_test_result)
