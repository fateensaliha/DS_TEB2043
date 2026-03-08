# Function to check leap year
check_leap_year <- function(year) {
  
  if ((year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0)) {
    print(paste(year, "is a leap year."))
  } else {
    print(paste(year, "is not a leap year."))
  }
}

# Test the function
check_leap_year(2004)  
check_leap_year(1900)  
check_leap_year(2000)  
check_leap_year(2023)  