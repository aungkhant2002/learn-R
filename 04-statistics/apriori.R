# loading library
library(arules)
library(arulesViz)

# loading data
dataset = read.transactions("D:/Market_Basket_Optimisation.csv", sep = ",")
str(dataset)

# Fitting model
set.seed = 220

# Training Apriori on the dataset 
associa_rules = apriori(data = dataset, 
                        parameter = list(support = 0.004, 
                                         confidence = 0.2)) 

# Plot
png("plot.png", width = 800, height = 600)
itemFrequencyPlot(dataset, topN = 10)
dev.off()

# Visualising the results 
inspect(sort(associa_rules, by = 'lift')[1:10]) 
plot(associa_rules, method = "graph",  measure = "confidence", shading = "lift") 

