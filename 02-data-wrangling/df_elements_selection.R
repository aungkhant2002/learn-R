name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

#name               type diameter rotation rings
#1 Mercury Terrestrial planet    0.382    58.64 FALSE
#2   Venus Terrestrial planet    0.949  -243.02 FALSE
#3   Earth Terrestrial planet    1.000     1.00 FALSE
#4    Mars Terrestrial planet    0.532     1.03 FALSE
#5 Jupiter          Gas giant   11.209     0.41  TRUE
#6  Saturn          Gas giant    9.449     0.43  TRUE
#7  Uranus          Gas giant    4.007    -0.72  TRUE
#8 Neptune          Gas giant    3.883     0.67  TRUE

#Print out diameter of Mercury (row 1, column 3)
planets_df[1, 3]
#0.382

#Print out data for Mars (entire fourth row)
planets_df[4, ]
##   name               type diameter rotation rings
## 4 Mars Terrestrial planet    0.532     1.03 FALSE

# you can use of directly variable name
# Select first 5 values of diameter column
planets_df[1:5, 'diameter']
##0.382  0.949  1.000  0.532 11.209

planets_df[, 3]
##0.382  0.949  1.000  0.532 11.209  9.449  4.007  3.883

planets_df[, "diameter"]
##0.382  0.949  1.000  0.532 11.209  9.449  4.007  3.883

#shortcut (If your columns have names, you can use the $ sign:)
planets_df$diameter
##0.382  0.949  1.000  0.532 11.209  9.449  4.007  3.883

#find planets with rings
planets_df[planets_df$rings, ]
##5 Jupiter Gas giant   11.209     0.41  TRUE
##6  Saturn Gas giant    9.449     0.43  TRUE
##7  Uranus Gas giant    4.007    -0.72  TRUE
##8 Neptune Gas giant    3.883     0.67  TRUE

#select names of planets with rings
planets_df[planets_df$rings, 'name']
##"Jupiter" "Saturn"  "Uranus"  "Neptune"

#find planets with larger diameter than earth
planets_df$diameter > 1
##FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

planets_df[planets_df$diameter > 1, ]
##5 Jupiter Gas giant   11.209     0.41  TRUE
##6  Saturn Gas giant    9.449     0.43  TRUE
##7  Uranus Gas giant    4.007    -0.72  TRUE
##8 Neptune Gas giant    3.883     0.67  TRUE