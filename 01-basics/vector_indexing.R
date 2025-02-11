sample_vector <- c(1, 4, NA, 2, 1, NA, 4, NA) #vector with some missing values

sample_vector[1:5] 
#1  4 NA  2  1

sample_vector[c(1, 3, 5)] 
#1 NA 1

sample_vector[-1] 
#4 NA  2  1 NA  4 NA

sample_vector[c(-1, -3, -5)]
#4  2 NA  4 NA

sample_vector[c(T, T, F, T, F, T, F, T)]
#1  4  2 NA NA

is.na(sample_vector)
#FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE

sum(is.na(sample_vector))
#3