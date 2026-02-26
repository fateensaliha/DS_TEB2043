student_scores <- data.frame(
  Student_Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
                   "Larson", "Holland", "Paul", "Simu", "Renner"),
  Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
  Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
)
chem_fail_count <- sum(student_scores$Chemistry <= 49)
print(paste("Number of students who failed Chemistry:", chem_fail_count))
physics_fail_count <- sum(student_scores$Physics <= 49)
print(paste("Number of students who failed Physics:", physics_fail_count))
chem_highest <- max(student_scores$Chemistry)
chem_highest_students <- student_scores$Student_Name[student_scores$Chemistry == chem_highest]
print(paste("Highest Chemistry score:", chem_highest, 
            "- Student(s):", paste(chem_highest_students, collapse = ", ")))
physics_highest <- max(student_scores$Physics)
physics_highest_students <- student_scores$Student_Name[student_scores$Physics == physics_highest]
print(paste("Highest Physics score:", physics_highest, 
            "- Student(s):", paste(physics_highest_students, collapse = ", ")))
print("Complete Student Records:")
print(student_scores)
