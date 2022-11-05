#Install main package for data analysis
library(tidyverse)
install.packages("wesanderson")
library(wesanderson)
library(RColorBrewer)
library(ggplot2)

#Importing the activities data
activities <- read.csv('export_25315294/activities.csv')

#First glance of the actual dataset
activities %>% as_tibble() %>% head()

#Grouping of activities per sport
activities %>% group_by(Aktivitätsart) %>%
  summarize(count = dplyr::n()) %>% arrange(desc(count)) %>% 
  ggplot(aes(x=Aktivitätsart,y = count, fill = count)) + 
  geom_bar(stat = "identity")
  
