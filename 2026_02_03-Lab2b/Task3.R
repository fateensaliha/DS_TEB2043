name <- readline("Enter your name: ")
phone <- readline("Enter your phone number: ")
name_upper <- toupper(name)
phone_digits <- gsub("[^0-9]", "", phone)
first_three <- substr(phone_digits, 1, 3)
last_four <- substr(phone_digits, nchar(phone_digits)-3, nchar(phone_digits))
cat("Hi,", name_upper, ". A verification code has been sent to", 
    first_three, "- xxxxx", last_four, "\n")