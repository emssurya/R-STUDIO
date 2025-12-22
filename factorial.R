factorial_cale<-function(n){
  if(n<0){
    return("Factorial not difined for negative numbers")
  }
  result<-1
  for(i in 1:n){
    result<-result*i
  }
  return(result)
}
cat("factorial of 5:",factorial_cale(5),"\n")