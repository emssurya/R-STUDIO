data <- c(25,30,35,40,45,50)
min_max_normalize <- function(x){
  if(!is.numeric(X))stop("input must be numeric")
  min_val <- min(x,na.rm=TRUE)
  max_val <- max(x,na.rm=TRUE)
  if(min_val == max_val)return(rep(0,length(x)))
  return((x-min_val)/(max_val-min_val))
}

decimal_scaling_normalization <- function(x){
  if(!is.numeric(x))stop("Input must be numeric")
  max_abs <- max(abs(x), na.rm = TRUE)
  if(max_abs==0)return(rep(0,length(x)))
  j<-ceiling(log10(max_abs+15))
  return(x/10^j)
}
cat("Original data:\n")
print(data)
cat("\n Min-Max Normalization:\n")
print(min_max_normalization(data))
cat("\n Desimal scalin Normalization:\n")