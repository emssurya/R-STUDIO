subset_df <-subset(mtcars,subset = cyl == 4)
subset_df2  <-subset(mtcars,subset = cyl == 6)
subset_df3  <-subset(mtcars,subset = cyl == 8)

cat ("\n cars with 4 cylinders \n")
cat ("---------------------------")
print(subset_df)

cat("\n five number summary of mpg values\n")
cat("--------------------------------------")


print(fivenum (subset_df3$mpg))

cat("\n cars with 6 cylinders\n")

cat("---------------------\n")
print(subset_df2)

cat("\n five number summary of mpg values\n")

cat("----------------------\n")

print(fivenum(subset_df2$mpg))

cat("\n cars with 8 cylinders\n")

cat("----------------------\n")

print(subset_df3)
cat("\n five number summary of mpg values\n")

cat("--------------------\n")
print(fivenum (subset_df3$mpg))
boxplot(mpg~cyl,data=mtcars, xlab = "number of cylinders",ylab = "Miles per Gallon",main="Mileage Data")