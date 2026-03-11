#Multiple Linear Regression
#1. mtcars dataset
#built in data
data(mtcars)
head(mtcars)
str(mtcars)
#model the MLR
model <- lm(mpg ~ hp + wt + cyl, data = mtcars)
#invesitigate the properties of the model
summary(model)
#split data into train and test sets
data.train<- mtcars[1:22,]
data.test<- mtcars[23:32,]
#modelling
relation <-lm(mpg ~ hp +wt+cyl, data = data.train)
summary(relation)
# Prediction
a <- data.frame(hp = data.test$hp, wt = data.test$wt, cyl = data.test$cyl)
result <- predict(relation, a)
print(round(result, digits = 2))
# Class Activity
# Multiple Linear Regression - Ozone Dataset

# Create the dataset
ozone <- data.frame(
  Ozone = c(11, 11, 11, 12, 12, 13, 13, 13, 13, 14),
  Solar.R = c(290, 44, 320, 149, 120, 137, 112, 27, 238, 274),
  Wind = c(9.2, 9.7, 16.6, 12.6, 11.5, 10.3, 11.5, 10.3, 12.6, 10.9),
  Temp = c(66, 62, 73, 74, 73, 76, 71, 76, 64, 68)
)

# View the data
print(ozone)

# Split data: 70% training (first 7 rows), 30% testing (last 3 rows)
train <- ozone[1:7, ]
test <- ozone[8:10, ]

# Build model on training data
model <- lm(Ozone ~ Solar.R + Wind + Temp, data = train)

# View model results
summary(model)

# Make predictions on test data
predictions <- predict(model, test)

# Compare actual vs predicted
results <- data.frame(
  Actual = test$Ozone,
  Predicted = round(predictions, 2)
)
print(results)

# Calculate accuracy
accuracy <- 1 - mean(abs(results$Actual - results$Predicted) / results$Actual)
print(paste("Accuracy:", round(accuracy * 100, 2), "%"))

# Class Activity
windows(width = 8, height = 6)
# Multiple Linear Regression - Ozone Dataset

# Create the dataset
ozone <- data.frame(
  Ozone = c(11, 11, 11, 12, 12, 13, 13, 13, 13, 14),
  Solar.R = c(290, 44, 320, 149, 120, 137, 112, 27, 238, 274),
  Wind = c(9.2, 9.7, 16.6, 12.6, 11.5, 10.3, 11.5, 10.3, 12.6, 10.9),
  Temp = c(66, 62, 73, 74, 73, 76, 71, 76, 64, 68)
)

# View the dataset
cat("\n========== COMPLETE DATASET ==========\n")
print(ozone)

# Split data: 70% training (first 7 rows), 30% testing (last 3 rows)
train <- ozone[1:7, ]
test <- ozone[8:10, ]

cat("\n========== TRAINING DATA (70%) ==========\n")
print(train)

cat("\n========== TESTING DATA (30%) ==========\n")
print(test)

# Build model on training data
cat("\n========== MULTIPLE LINEAR REGRESSION MODEL ==========\n")
model <- lm(Ozone ~ Solar.R + Wind + Temp, data = train)

# Display model coefficients
cat("\n--- Model Coefficients ---\n")
print(coef(model))

# Display full model summary
cat("\n--- Model Summary ---\n")
summary(model)

# Make predictions on test data
cat("\n========== PREDICTIONS ==========\n")
predictions <- predict(model, test)

# Compare actual vs predicted
results <- data.frame(
  Actual = test$Ozone,
  Predicted = round(predictions, 2),
  Difference = round(test$Ozone - predictions, 2)
)

cat("\n--- Actual vs Predicted ---\n")
print(results)

# Calculate RMSE (Root Mean Square Error)
rmse <- sqrt(mean((test$Ozone - predictions)^2))
cat("\n--- Model Performance ---\n")
cat("RMSE:", round(rmse, 4), "\n")

# Calculate R-squared for test set
actual <- test$Ozone
predicted <- predictions
ss_res <- sum((actual - predicted)^2)
ss_tot <- sum((actual - mean(actual))^2)
r_squared <- 1 - (ss_res / ss_tot)
cat("R-squared:", round(r_squared, 4), "\n")

# ========== SIMPLE VISUALIZATION ==========
# Create a new plot window with smaller margins
cat("\n========== VISUALIZATION ==========\n")
cat("Creating scatter plot: Actual vs Predicted\n")

# Set smaller margins
par(mar = c(5, 4, 4, 2) + 0.1)

# Create scatter plot
plot(test$Ozone, predictions, 
     main = "Actual vs Predicted Ozone (Test Data)",
     xlab = "Actual Ozone", 
     ylab = "Predicted Ozone",
     pch = 19,           # Solid circle
     col = "blue",        # Blue color
     cex = 1.5,           # Bigger points
     xlim = c(10, 15),    # X-axis range
     ylim = c(10, 15))    # Y-axis range

# Add diagonal line (perfect prediction)
abline(0, 1, col = "red", lwd = 2)

# Add labels for each point
text(test$Ozone, predictions, 
     labels = paste("Obs", 1:3), 
     pos = 4, cex = 0.8)

# Add grid
grid()

# Add legend
legend("topleft", 
       legend = c("Perfect prediction", "Actual vs Predicted"),
       col = c("red", "blue"),
       lty = c(1, NA),
       pch = c(NA, 19),
       cex = 0.8)

# Add R-squared value on plot
text(11, 14.5, paste("R² =", round(r_squared, 3)), cex = 1.2)

cat("Visualization complete! Check the plot window.\n")