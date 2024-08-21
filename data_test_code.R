library(readr) 
read.csv('time.csv')

timepeng <- read.csv("time.csv", header = TRUE)

str(timepeng)

timepeng$Time <- strptime(timepeng$Time, format = "%H:%M")

timepeng <- timepeng[complete.cases(timepeng$Time), ]

if (nrow(timepeng) == 0) {
  stop("No valid data remaining after removing missing values.")
}



# Convert the "Time" column to a time-based format
timepeng$Time <- as.POSIXlt(timepeng$Time, format = "%H:%M")

# Remove missing values
timepeng <- timepeng[complete.cases(timepeng$Time), ]

# Check if there are any rows left
if (nrow(timepeng) == 0) {
  stop("No valid data remaining after removing missing values.")
}

# Print the structure of the dataset
str(timepeng)


# Display the first few rows of the dataset
head(timepeng)

# Create a simple scatter plot with blue points
plot(timepeng$Time, timepeng$No..penguins, 
     type = 'o',
     xlab = 'Time', 
     ylab = 'Number of Penguins',
     col = 'blue',
     bg = 'blue',
     pch = 20,
     axis(1, at = timepeng$Time, labels = format(timepeng$Time, "%H:%M"), cex.axis = 0.7, las = 2)
)


# Assuming your plot code is like this
plot(timepeng$Time, timepeng$No..penguins, 
     type = 'o',
     xlab = 'Time', 
     ylab = 'Number of Penguins in the water',
     col = 'blue',
     bg = 'blue',
     pch = 20,
     xaxt = 'n')

# Convert time to numeric format
time_numeric <- as.numeric(timepeng$Time)

# Add the following line to customize the x-axis ticks
axis(1, at = time_numeric, labels = format(timepeng$Time, "%H:%M"), cex.axis = 0.7, las = 2)

# Adjust cex.axis and las parameters as needed for better formatting





