install.packages("tidyverse")
efina= read.csv("C:/Users/OCTAVE/Downloads/new efina 2018.csv", header=TRUE,sep=",")
View(efina)
library(tidyverse)
glimpse(efina[11:20])

efina %>% select(everything()) %>% gsub('#NULL!'," ")
map()

t = Sys.time()
efina[,null_col] <- efina[,null_col] %>% map(~gsub('#NULL!',"",.x))
Sys.time() - t

map(efina[,null_col],~gsub('#NULL!',"",.x))

efina_1 <- efina

t = Sys.time()
efina[,1:1396] %>% grep('#NULL!')
Sys.time() - t

length(efina)
if(grepl('#NULL!',efina[,i])){
  efina[,i] <- map(efina[,i],~gsub('#NULL!'," ",.x))
}

for(i in 11:20){
  print(gsub('#NULL!'," ",efina[,i]))
}
efina[]
summary(efina)
class(unique(factor(efina$D2_1)))
efina()
is.character(efina[,7])

null_col <- NULL
for(i in 1:length(efina)){
  if(is.character(efina[,i]) & '#NULL!' %in% unique(efina[,i])) {
    null_col <-  append(null_col,i)
  }
}



efina[]

write.csv(efina,file="efina.csv")

write.csv()