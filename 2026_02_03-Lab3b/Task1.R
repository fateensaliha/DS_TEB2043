scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)
A_count <- sum(scores >= 90 & scores <= 100)
B_count <- sum(scores >= 80 & scores <= 89)
C_count <- sum(scores >= 70 & scores <= 79)
D_count <- sum(scores >= 60 & scores <= 69)
E_count <- sum(scores >= 50 & scores <= 59)
F_count <- sum(scores <= 49)
grade_table <- data.frame(
  Score = c("90-100", "80-89", "70-79", "60-69", "50-59", "<=49"),
  Grade = c("A", "B", "C", "D", "E", "F"),
  Number_of_Students = c(A_count, B_count, C_count, D_count, E_count, F_count)
)
print("Grade Distribution:")
print(grade_table)
pass_status <- scores > 49
names(pass_status) <- paste("Student", 1:20)
print("Pass/Fail Status (TRUE = Pass, FALSE = Fail):")
print(pass_status)
