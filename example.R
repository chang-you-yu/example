### 1
library(tidyverse)
df <- data.frame(team=c("金塊","灰熊","國王","太陽","公鹿","賽爾提克","76人","騎士"),
                 area=c(rep("W",4),rep("E",4)),
                 wins=c(53,51,48,45,58,57,54,51), stringsAsFactors =  FALSE)
df <- df %>% 
  mutate(area = ifelse(area=="W","西區","東區")) %>%
  mutate(win_rate = wins/82) %>%
  mutate(mark = ifelse(win_rate>0.65,"勝率超過65%",""))

### 2
plot(mtcars$mpg,mtcars$wt,col=factor(mtcars$cyl),
     main="mtcars",pch =19, 
     xlab = "mpg",
     ylab = "wt")

legend(max(mtcars$mpg)-3,max(mtcars$wt)-0.1,
       c("cyl=4","cyl=6","cyl=8")
       ,pch=c(19,19,19),col=c(1,2,3),cex=1) 
