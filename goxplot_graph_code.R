install.packages("readr")
library(readr) 

staff <- read.csv("green2.csv", header = TRUE)

str(staff)

boxplot(staff,
        ylab = "Number of penguins in the water"
        )

# Points
stripchart(staff,              # Data
           method = "jitter", # Random noise
           
           pch = 20,          # Pch symbols
           col = "blue",           # Color of the symbol
           vertical = TRUE,   # Vertical mode
           add = TRUE)        # Add it over



t_test_result <- t.test(staff$staff.member.around, staff$no.staff.member.around, na.rm = TRUE)
print(t_test_result)

