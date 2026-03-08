# Function to check Armstrong number with detailed calculation
check_armstrong_detailed <- function(num) {
  # Convert number to string to count digits
  num_str <- as.character(num)
  num_digits <- nchar(num_str)
  
  cat("Number of digits:", num_digits, "\n")
  cat("Calculation: ")
  
  # Calculate sum of digits raised to power of number of digits
  sum <- 0
  temp <- num
  digits <- c()
  
  while (temp > 0) {
    digit <- temp %% 10
    digits <- c(digit, digits)  # Store digits in original order
    temp <- floor(temp / 10)
  }
  
  # Show calculation
  for (i in 1:length(digits)) {
    sum <- sum + (digits[i] ^ num_digits)
    cat(digits[i], "^", num_digits, sep = "")
    if (i < length(digits)) cat(" + ")
  }
  cat(" =", sum, "\n")
  
  # Check if number is Armstrong
  if (sum == num) {
    print(paste(num, "is an Armstrong number."))
  } else {
    print(paste(num, "is not an Armstrong number."))
  }
}

# Test the function
check_armstrong_detailed(1634)  # Should output: 1634 is an Armstrong number.
check_armstrong_detailed(153)    # Should output: 153 is an Armstrong number.
check_armstrong_detailed(123)    # Should output: 123 is not an Armstrong number.