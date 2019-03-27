library(dplyr)
library(ggplot2)

#load the Titanic dataset
titanic <- read.csv('Titanic_clean.csv')
titanic
str(titanic)

#Plot 1
ggplot(Titanic, aes(factor(pclass), fill=factor(sex)))+
  geom_bar(position= "dodge")

#plot 2
ggplot(Titanic, aes(factor(pclass), fill=factor(sex)))+
  geom_bar(position= "dodge")+
  facet_grid(".~survived")
    
#introduce jitter 
posn.j <- position_jitter(0.5, 0)

#plot with jitter
ggplot(titanic, aes(x = pclass, y = Age, col = sex)) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(". ~ survived")

