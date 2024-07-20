### 1
library(tidyverse)
df <- data.frame(team=c("金塊","灰熊","國王","太陽","公鹿","賽爾提克","76人","騎士"),
                 area=c(rep("W",4),rep("E",4)),
                 wins=c(53,51,48,45,58,57,54,51), stringsAsFactors =  FALSE)
df <- df %>% 
  mutate(area = ifelse(area=="W","西區","東區")) %>%
  mutate(win_rate = wins/82) %>%
  mutate(mark = ifelse(win_rate>0.65,"勝率超過65%",""))