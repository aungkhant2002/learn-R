a_vector <- 1:10  
#1 2 3 4 5 6 7 8 9 10

b_vector <- seq(1, 10, 2)   
#1 3 5 7 9

c_vector <- rep(1:3, 3)   
#1 2 3 1 2 3 1 2 3

d_vector <- rep(1:3, each=3)  
#1 1 1 2 2 2 3 3 3


c(a_vector, b_vector) 
#1  2  3  4  5  6  7  8  9 10  1  3  5  7  9