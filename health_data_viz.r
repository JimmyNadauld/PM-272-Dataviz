install.packages(c("readr","GGally","NHANES"))
library(tidyverse)
library(GGally)
library(readr)
library(NHANES)

#load NHANES data
data("NHANES")
View(NHANES)

# create a sub-table that only has BMI, Age, Gender and Cholesterol

health_data <- NHANES %>% select(BMI,Age,Gender,TotChol)

#create a histogram of BMI using ggplot

ggplot(health_data, aes(x = BMI))+
  geom_histogram(binwidth = 1, fill = "skyblue", colour = "black")
labs(title = "mean height in Wales is higher than European Average")+
  theme_minimal()

#create correlation plot

cor(health_data, use = "complete.obs")