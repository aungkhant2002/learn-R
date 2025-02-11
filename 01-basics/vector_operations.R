a_vector <- c(1, 5, 2, 7, 8)
b_vector <- seq(1, 10, 2)

#summation
sum(a_vector) 
#23

#average
mean(a_vector) 
#4.6

a_vector + 10 
#11 15 12 17 18

a_vector > 4 
#FALSE  TRUE FALSE  TRUE  TRUE

sum(a_vector > 4) 
#3

a_vector - b_vector 
#0  2 -3  0 -1

a_vector == b_vector 
#TRUE FALSE FALSE  TRUE FALSE

sum(a_vector == b_vector) 
#2