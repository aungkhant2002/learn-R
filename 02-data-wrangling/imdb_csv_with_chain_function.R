library(dplyr)
imdb <- read.csv('https://raw.githubusercontent.com/myhan0710/prac_dplyr/master/imdb.csv', stringsAsFactors = F)
str(imdb)
imdb_chain <- imdb %>%
  filter(year > 2000, imdbRating >= 8, ratingCount > 500)%>%
  mutate(ActionAdven = Action * Adventure)%>%
  select(wordsInTitle, imdbRating, ratingCount, year, ActionAdven)%>%
  arrange(year, desc(imdbRating))%>%
  group_by(ActionAdven)%>%
  summarise(mean_rating = mean(imdbRating),
            mean_ratingCount = mean(ratingCount),
            mean_year = mean(year),
            num = n())

imdb_chain
