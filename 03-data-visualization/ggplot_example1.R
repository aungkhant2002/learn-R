library(ggplot2)
mtcars
str(mtcars)

min(mtcars$mpg)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 1)



ggplot(mtcars, aes(x = hp, y = mpg, color = factor(am))) + geom_point()
