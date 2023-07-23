install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)
data_1952 <- subset(gapminder, year == 1952)
x <- data_1952$lifeExp
hist(x, col = "skyblue", main = "Histogram of Life Expectancies in 1952", xlab = "Life Expectancy")
mean(x <= 40)

prop = function(40) {
  mean(x <= 40)
}
qs = seq(from=min(x), to=max(x), length=20)

props = sapply(qs, prop)
plot(qs, props)
props = sapply(qs, function(q) mean(x <= q))
