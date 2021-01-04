samp<- c(rep(1,3),rep(0,3),rep(1,4),rep(0,4),rep(1,5),rep(0,5),rep(1,7),rep(0,7),rep(1,8),rep(0,8))
samp
ls()

j <- 1
k <- 0
l <- 0
result <- NULL
label1 <- 'g1_'
label0 <- 'g0_'

while (j <= length(samp)) {
  strt <- samp[j]
  if (strt == 1) {
    k <- k + 1
  } else {
    l <- l + 1
  }
  while (samp[j]==strt & j <= length(samp)) {
    if (samp[j] == 1) {
      result <- append(result, paste(label1, k))
    }
    if (samp[j] == 0){
      result <- append(result, paste(label0, l))
    }
    j <- j + 1
  }
}



data.frame(samp,result)
