#loading the libraries

library(tidyverse)
library(ggthemes)

# importing the data
data2 <- read.csv("Agegroup1.csv")

# omitting nan values
data2 <- na.omit(data2)

# plotting the curve
ggplot(data2 ,aes(x = Age , y = COVID.19.Deaths , color = Condition.Group))+ geom_jitter(size = 2,shape = 19,alpha = 0.5)+ theme_wsj() + theme(legend.position = "bottom") + ylim(0,1000) + xlim(0,90) + labs(x = "Age" , y = "# of Death",title = "COVID Deaths by Age")



