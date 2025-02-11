name_vector <- c("John", "Bob", "Sarah", "Alice")
name_vector[1:3]  #"John"  "Bob"   "Sarah"

# minus index means "except for"
name_vector[-2]   #"John"  "Sarah" "Alice"

name_vector[c(-1, -2)] #"Sarah" "Alice"

name_vector[c(1, 3, 4)] #"John"  "Sarah" "Alice"