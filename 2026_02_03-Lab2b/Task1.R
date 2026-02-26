weight <- as.numeric(readline("Enter weight (kg): "))
height <- as.numeric(readline("Enter height (m): "))
bmi <- weight / (height^2)
underweight <- bmi <= 18.4
normal <- bmi >= 18.5 & bmi <= 24.9
overweight <- bmi >= 25.0 & bmi <= 39.9
obese <- bmi >= 40.0
cat("Underweight:", underweight, 
    "Normal:", normal, 
    "Overweight:", overweight, 
    "Obese:", obese, "\n")
cat("\nYour BMI is:", round(bmi, 2), "\n")
if(underweight) cat("Status: Underweight\n")
if(normal) cat("Status: Normal\n")
if(overweight) cat("Status: Overweight\n")
if(obese) cat("Status: Obese\n")
