propertydata <- read.csv("C:/Users/acer/Downloads/propertydata.csv")
  View(propertydata)
  
  #aggregate
  aggregate(PRICE ~ PROPERTYCITY, propertydata, mean)
  
  aggregate(PRICE ~ PROPERTYCITY + PROPERTYZIP, propertydata, mean)
  
  library(dplyr)
  
  #group_by and pipe operator
  propertydata %>%
    select(PROPERTY,PRICE,PROPERTYZIP) %>%
    select(PROPERTYCITY,PRICE,PROPERTYZIP) %>%
    group_by(PROPERTYCITY, PROPERTYZIP) %>%
    summarize(mean(Price, na.rm=TRUE))