library(arules)
library(RColorBrewer)

transaction_list <- list(
  c("milk","bread","eggs"),
  c("milk","bread"),
  c("milk","juice"),
  c("milk","bread","juice"),
  c("bread","eggs")
)

trans_data <- as(transaction_list, "transactions")

inspect(trans_data)
cat("\n")

rules <- apriori(trans_data,
                 parameter = list(support = 0,
                                  confidence = 0))

cat("\n")

strongest_rules <- sort(rules, by = "lift", decreasing = TRUE)
inspect(strongest_rules)

itemFrequencyPlot(trans_data,
                  topN = 20,
                  col = brewer.pal(8, 'Pastel2'),
                  main = 'Relative Item Frequency Plot',
                  type = "relative",
                  ylab = "Item Frequency (Relative)")
