data <- matrix(c(
  
  2.5,2.4,1.2,
  0.5,0.7,0.3,
  2.2,2.9,1.7,
  1.9,2.2,1.1,
  3.1,3.0,1.9
),ncol=3,byrow = TRUE)

colnames (data) <-c("Feature1,","Feature2","Feature3")
pca_result<-prcomp(data,scale. = TRUE)

print(summary(pca_result))

print(pca_result$rotation)

print(pca_result$x)