string1 <- "Hello"
string2 <- "world"
result <- paste(string1,string2)
cat("Concatenated string:",result,"\n")

#Extract substring
Original_string <- "Data scinece"
substring <- substr(Original_string, star=5,stop=9)
cat("Substing:", substring,"\n")

#calculate sting length
string <- "programming"
length_result <- nchar(string)
cat("String length:", length_result,"\n")

#convert to upper and lowercase
uppercase_string <- toupper (string)
lowercase_sting <- tolower (string)
cat("uppercase string:", uppercase_string,"\n")
cat("lowecase string:", lowercase_sting,"\n")

#replace a sub string
original_string <- "I love programing in R"
modified_string <- gsub("R", "python", original_string)
cat("modified string:",modified_string, "\n")

#split a string
text <-"apple,orenge,banana"
splite_result <- strsplit(text,",")
cat("splite result:",unlist(splite_result),"\n")








