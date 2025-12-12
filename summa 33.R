#An arrat with one dimension with values ranging from 1 to 24 thisarray<-c(1:24)

#An array with more than one dimension 
multiarraat <-array(thisarray,dim=c(4,3,2))
Print(multiarray)

#use the [] brackets to access the array elements 
Print (multiarray[2,3,2])

#access all the items fr5om the first row from matrox one 
Print (multiarray[c(1),,1])

#access all the items from the first co=olumn from matrix one 
Print|(multiarray[,c(1),1])

#check if the value "2" is paresent in the array:
Print(paste(2%in%multiarray))

#use the lengt() function to funmd the no.of elements of an array
print(lengrh (multiarray))

#you can loop through the array items by using a for loop:
for(x in multiarray){
  print(x)
  
}
