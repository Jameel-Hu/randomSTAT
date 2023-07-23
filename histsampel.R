library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}

hist(X,breaks=X,xlab="bbb",main="Adult")

# make averages50
set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,50)
  averages50[i] <- mean(X)
}
F(a)≡Pr(23 <x <=25)
mean( averages50 < 25 & averages50 > 23)
mean(23 < averages50 < 25)
library(rafalib) 
pnorm(23, 23.9, 0.43)
pnorm(25, 23.9, 0.43)
0.9947383-0.01817354
###mypa(1,2)r is optional. it is used to put both plots on one page
mypar(1,2)
hist(averages5, xlim=c(18,30))
hist(averages50, xlim=c(18,30))