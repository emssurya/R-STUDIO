library(dplyr)

dataframe <- read.csv("Z:\\datamining\\Book1.csv", sep = ",")

print(dataframe)


ListMissingColumns <- colnames(dataframe)[apply(dataframe, 2, anyNA)]


medianMissing <- apply(
  dataframe[, colnames(dataframe) %in% ListMissingColumns],
  2,
  median,
  na.rm = TRUE
)


newDataFrameMedian <- dataframe %>% mutate(
  Chemistry = ifelse(is.na(Chemistry), medianMissing["Chemistry"], Chemistry),
  Mathematics = ifelse(is.na(Mathematics), medianMissing["Mathematics"], Mathematics)
)

print(newDataFrameMedian)


write.csv(newDataFrameMedian, "Z:\\datamining\\Book1.csv", row.names = FALSE)
