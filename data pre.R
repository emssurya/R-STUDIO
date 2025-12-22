library(dplyr)

dataframe <- data.frame(
  Name = c("Bhuwanesh", "Anil", "jai", "Naveen"),
  Physics = c(98, 87, 91, 94),
  Chemistry = c(NA, 84, 93, 87),
  Mathematics = c(91, 86, NA, NA)
)

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

