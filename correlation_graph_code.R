install.packages("readr")
library(readr) 

peng <- read.csv("BIO311_Penguins_Behaviour.csv", header = TRUE)

str(peng)


plot(peng$No..penguins ~ peng$No..people,
     ylab = "number of penguins in the water",
     xlab = "number of people in the area",
     col = 'blue')

which(peng$No..people == max(peng$No..people))

cor.test(peng$No..penguins, peng$No..people)

pengreg <- lm(No..penguins ~ No..people, data = peng)
summary(pengreg)

plot(peng$No..penguins ~ peng$No..people,
     ylab = "Number of penguins in the water",
     xlab = "Number of people in the area",
     col = 'blue',
     bg = 'blue',
     pch = 20)

text(x = 25,
     y = 5.5,
     labels= "r=0.69, p=3.1e-06",
     col = 'black',
     cex = 0.8 )

abline(pengreg)

plot(pengreg) 

