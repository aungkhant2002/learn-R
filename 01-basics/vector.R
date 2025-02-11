numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, FALSE)

typeof(numeric_vector) #double
typeof(character_vector) #character
typeof(boolean_vector) #logical

length(numeric_vector) #3

new_vector <- c(numeric_vector, 50)
new_vector #1 10 49 50