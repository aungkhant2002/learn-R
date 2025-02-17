library(ggplot2)
mtcars
str(mtcars)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 5)


ggplot(mtcars, aes(x = hp, y = mpg, color = factor(am))) + geom_point()
