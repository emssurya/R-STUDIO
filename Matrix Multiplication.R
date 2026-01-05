#matrix Operations

A <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
B <- matrix(c(7,8,9,10,11,12), nrow = 2, ncol = 3)

cat("matrix A\n")
cat("--------\n")

prmatrix(A,rowlab = rep("",nrow(A)), collab = rep("",ncol(A)))

cat("matrix B\n")
cat("--------\n")

prmatrix(A,rowlab = rep("", 2), collab = rep("",3))

cat ("-------\n")

result_add <-A+B

prmatrix(result_add,rowlab = rep("", 2), collab = rep("",3))

cat("\n Matrix Subtraction \n")
cat("---------\n")

result_sub <-A-B

prmatrix(result_sub,rowlab = rep("", 2), collab = rep("",3))

cat("\n Matrix Multiplication \n")
cat("---------\n")

result_mul =A*B

prmatrix(result_mul,rowlab = rep("", 2), collab = rep("",3))


