library(dplyr)
imdb <- read.csv('https://raw.githubusercontent.com/myhan0710/prac_dplyr/master/imdb.csv', stringsAsFactors = F)
str(imdb)

# Use filter() function to extract specific row that fits the condition.
# filter (data, condition1, condition2, condition3, ...)
imdb1 <- filter(imdb, year>2000, imdbRating>=8, ratingCount>500)
str(imdb1)

#Use mutate() function to make new column.
#mutate(data, column_name1 = condition1, column_name2 = condition2, ...)
imdb2 <- mutate(imdb1, ActionAdven = Action * Adventure)
str(imdb2)
names(imdb2)

# Use select() function to extract specific column that fits the condition.
# select(name, column_name1, column_name2, ...)
imdb3 <- select(imdb2, wordsInTitle, imdbRating, ratingCount, year, ActionAdven)
str(imdb3)

#Use the arrange() function to sort data from small to large values based on a specified column.
#arrange(data, column_name1, column_name2, ...)
imdb4 <- arrange(imdb3, year, desc(imdbRating))
head(imdb4)

#Use the summarise() function to obtain basic statistics by specifying functions such as mean(), var(), and median()
#summarise(data, column_name1 = condition1, column_name2 = condition2, ...)
imdb5 <- summarise(imdb4, mean_rating = mean(imdbRating), mean_year = mean(year), num_ActionAdven = sum(ActionAdven))
imdb5

#Use the group_by() function, then you can group data by level in the specified column.
#group_by(data, column_name)
imdb6 <- group_by(imdb4, ActionAdven)
imdb6

#After group_by() function, You can associate the results with summarise() to view the results of each level.
imdb7 <- summarise(imdb6, mean_rating = mean(imdbRating),
                   mean_ratingCount = mean(ratingCount),
                   mean_year = mean(year),
                   num = n()
                   )
imdb7
