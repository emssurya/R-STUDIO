thisArray <- c(1:24)

multiArray <- array(thisArray, dim = c(4, 3, 2))

print(multiArray)

print(multiArray[2, 3, 2])

print(multiArray[c(1), , 1])

print(multiArray[, c(1), 1])

print(paste(2 %in% multiArray))

print(length(multiArray))

for (x in multiArray) {
  print(x)
}
