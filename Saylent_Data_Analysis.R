library(formattable)

setwd("/home/marcburt/saylent/data-analysis")

data <- read.csv('Sample_Data.csv')
summary(data)
data

unique(data$NAME)
unique(data$Card.Number)
table(data$Card.Number)
table(data$IsFraud)/nrow(data)
table(data$NAME)
unique(data$SSN)
unique(data$Customer.Address)
unique(data$Transaction.Method)
unique(data$Merchant)
unique(data$Transaction.Date)
unique(data$Settlement.Date)
unique(data$Institution.Name)
unique(data$Acquiring.Institution.Name)

transAgg <- aggregate(IsFraud ~ Transaction.Date, data = data, mean)
transAgg$IsFraud <- percent(transAgg$IsFraud)
transAgg[order(-transAgg$IsFraud),]


table(data$Merchant)
merchagg  <- aggregate(IsFraud ~ Merchant, data = data, mean)
merchagg$IsFraud <- percent(merchagg$IsFraud)
merchagg[order(-merchagg$IsFraud),]

data$Terminal.Location <- toString(data$Terminal.Location)
table(data$Terminal.Location)
head(data$Terminal.Location, 50)
