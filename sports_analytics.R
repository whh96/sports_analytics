library(tidyverse)
data <- read.csv(file.choose())

head(data)

javelin <- data %>%
  filter(Male_Female == 'Female' & Event == 'Javelin') %>%
  select(-Male_Female, -Event)

head(javelin)
summary(javelin)

javelin_long <- javelin %>%
  gather(Flight1:Flight6, key = "Flight", value = "Distance")

javelin_long$Flight = as.numeric(gsub('Flight', '', javelin_long$Flight))

head(javelin_long)
