some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")
some_vector

some_vector['Name'] #John Doe
some_vector['Profession'] #poker player

some_vector[1] #John Doe

##################################################

weather_vector <- c("Mon" = "Sunny", "Tues" = "Rainy", "Wed" = "Cloudy", "Thur" = "Foggy", "Fri" = "Sunny", "Sat" = "Sunny", "Sun" = "Cloudy")
weather_vector

names(weather_vector) #"Mon"  "Tues" "Wed"  "Thur" "Fri"  "Sat"  "Sun"
