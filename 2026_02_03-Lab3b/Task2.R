student_records <- list(
  names = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
            "Larson", "Holland", "Paul", "Simu", "Renner"),
  exam_scores = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)
names(student_records) <- c("Student_Names", "Exam_Scores")
highest_
score <- max(student_records$Exam_Scores)
lowest_score <- min(student_records$Exam_Scores)
average_score <- mean(student_records$Exam_Scores)
highest_students <- student_records$Student_Names[student_records$Exam_Scores == highest_score]
lowest_students <- student_records$Student_Names[student_records$Exam_Scores == lowest_score]
print(paste("Highest Score:", highest_score))
print(paste("Lowest Score:", lowest_score))
print(paste("Average Score:", round(average_score, 2)))
print(paste("Student(s) with highest score:", paste(highest_students, collapse = ", ")))
print(paste("Student(s) with lowest score:", paste(lowest_students, collapse = ", ")))
