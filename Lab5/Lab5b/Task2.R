# Function to display cubes up to a given integer
display_cubes <- function(n) {
  for (i in 1:n) {
    cube <- i^3
    cat("Number is:", i, "and cube of the", i, "is:", cube, "\n")
  }
}

# Get input from user with validation
cat("Input an integer: ")
input <- readline()

# Convert to numeric and check if it's valid
num <- as.numeric(input)

if (is.na(num)) {
  cat("Error: Please enter a valid number.\n")
} else if (num <= 0) {
  cat("Error: Please enter a positive integer.\n")
} else if (num != floor(num)) {
  cat("Error: Please enter an integer (not a decimal).\n")
} else {
  display_cubes(num)
}