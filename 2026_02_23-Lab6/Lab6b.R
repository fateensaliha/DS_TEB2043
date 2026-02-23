student_data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2))
print("Question 1 - Initial Data Frame:")
print(student_data)
student_data$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
print("Question 2 - Data Frame with 'qualify' column:")
print(student_data)
new_row <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)
student_data <- rbind(student_data, new_row)
print("Question 3 - Data Frame with new row:")
print(student_data)
print("Question 4 - Data Frame Analysis:")
print("Structure of the data frame:")
str(student_data)
print("Summary of the data frame:")
summary(student_data)
print(paste("Number of rows:", nrow(student_data)))
print(paste("Number of columns:", ncol(student_data)))
print(paste("Dimensions:", paste(dim(student_data), collapse = " x ")))
student_data$qualify <- as.factor(student_data$qualify)
student_data$attempts <- as.factor(student_data$attempts)
print("Data Frame after converting columns to factors:")
str(student_data)
print("Updated summary after type conversion:")
summary(student_data)
print("OBSERVATIONS AND INSIGHTS:")
print("1. The dataset contains information about 8 students with their scores, attempts, and qualification status.")
print("2. Score is a numeric variable that ranges from 8.0 to 19.0")
print("3. Attempts is now treated as a categorical variable with values 1, 2, or 3")
print("4. Qualification status shows 3 students qualified (yes) and 5 did not qualify (no)")
print("5. The maximum score (19.0) was achieved by Jonas with 2 attempts")
print("6. The minimum score (8.0) was achieved by Kevin with 1 attempt")
print("7. Converting attempts to factor helps in understanding the distribution of attempts across students")

