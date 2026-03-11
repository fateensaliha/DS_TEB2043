#Simple Linear Regression
#1.
#data of height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
#data of weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function
relation <- lm(y~x)
print(relation)
# Find weight of a person with height 189
x_test <- data.frame(x = 189)
result <- predict(relation, x_test)
print(round(result, digit =2))
#3. Plot the data
# Plot the chart
plot(x,y,col = "blue", main = "Height & Weight Regression", abline(lm(y~x)),pch =16, xlab = "Height in cm", ylab = "Weight in Kg")
#Creating data frame
data1= data.frame(x,y)
#splitting data into training and testing
data1_train<-data1[1:7,]
data1_test<-data1[8:10,]
# Apply the lm() function
relation <- lm(y~x, data1_train)
print(relation)
#4. Training, Testing & Performance Analysis
#Make prediction
x_text <- data.frame(x= data1_test$x)
result <- predict(relation,x_text)
print(result)
actuals_preds <- data.frame(cbind(actuals=data1_test$y,
                                  predicteds=result))
mape <- mean(abs(actuals_preds$actuals - actuals_preds$predicteds )/
               actuals_preds$actuals)*100
paste("The error - MAPE is: ", round(mape,digit=2),"%")
#Happiness income
df <- read.csv("C:/Users/fateen saliha/Downloads/DS_TEB2043/income_happiness.csv")
#Split data into training (80%) and testing (20%) sets
#Randomly select row indices for training
train_indices <- sample(1:nrow(df), size = 0.8 * nrow(df))
train_data <- df[train_indices, ]
test_data <- df[-train_indices, ]
# Apply the lm() function
relation <- lm(happiness~income, data=train_data)
print(relation)
# Prediction
a <- data.frame(x=test_data$income)
colnames(a) <- "income"
result <- predict(relation,a)
# Plot
plot(test_data$income,test_data$happiness, col= "red", abline(lm(happiness~income, data=train_data)), pch = 16, xlab = "income", ylab = "happiness")
# 5. Class Activity
# Simple Linear Regression for Salary Prediction

# Create the dataset
Experience <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Monthly_Salary <- c(2500, 2700, 3000, 3400, 3900, 4400, 5000, 5600, 6200, 6900)

# Create data frame
data <- data.frame(Experience, Monthly_Salary)

# Part (a): Split data into training (70%) and testing (30%)
set.seed(123)
train_indices <- sample(1:nrow(data), size = 0.7 * nrow(data))
train_data <- data[train_indices, ]
test_data <- data[-train_indices, ]

# Build linear regression model
model <- lm(Monthly_Salary ~ Experience, data = train_data)
print("Linear Regression Model:")
print(model)

# Make predictions
predictions <- predict(model, newdata = data.frame(Experience = test_data$Experience))

# Results
results <- data.frame(
  Experience = test_data$Experience,
  Actual = test_data$Monthly_Salary,
  Predicted = round(predictions, 2)
)
print("Test Data Results:")
print(results)

# Part (b): Visualization - Single comprehensive plot

# Create a larger plotting window (for RStudio, you can also manually expand the plot pane)
windows(width = 10, height = 8)  # For Windows
# quartz(width = 10, height = 8)  # For Mac
# x11(width = 10, height = 8)     # For Linux

# Set margins to be smaller
par(mar = c(5, 5, 4, 2) + 0.1)

# Create the main plot
plot(train_data$Experience, train_data$Monthly_Salary,
     col = "blue", 
     pch = 16,
     cex = 1.5,
     main = "Linear Regression: Monthly Salary vs Years of Experience",
     xlab = "Years of Experience", 
     ylab = "Monthly Salary (RM)",
     xlim = c(0, 11), 
     ylim = c(2000, 8000),
     cex.main = 1.2,
     cex.lab = 1.1,
     cex.axis = 1)

# Add grid
grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted")

# Add testing data points
points(test_data$Experience, test_data$Monthly_Salary, 
       col = "green", 
       pch = 16, 
       cex = 1.5)

# Add regression line
abline(model, col = "red", lwd = 3)

# Add predicted points on test data
points(test_data$Experience, predictions, 
       col = "orange", 
       pch = 8, 
       cex = 2, 
       lwd = 2)

# Add legend
legend("topleft", 
       legend = c("Training Data", "Testing Data (Actual)", 
                  "Testing Data (Predicted)", "Regression Line"),
       col = c("blue", "green", "orange", "red"),
       pch = c(16, 16, 8, NA),
       lty = c(NA, NA, NA, 1),
       lwd = c(NA, NA, NA, 2),
       pt.cex = c(1.5, 1.5, 2, NA),
       cex = 1,
       bg = "white",
       box.col = "black")

# Add model equation and R-squared
coefs <- round(coef(model), 2)
r_squared <- round(summary(model)$r.squared, 3)

text(1, 7500, 
     paste("Salary =", coefs[1], "+", coefs[2], "× Experience"), 
     pos = 4, 
     cex = 1.1,
     font = 2)

text(1, 7000, 
     paste("R² =", r_squared), 
     pos = 4, 
     cex = 1.1,
     font = 2)

# Add actual vs predicted values as text near points
for(i in 1:nrow(test_data)) {
  text(test_data$Experience[i] + 0.3, 
       test_data$Monthly_Salary[i] + 100, 
       paste("Actual:", test_data$Monthly_Salary[i]), 
       cex = 0.8, 
       col = "darkgreen")
  
  text(test_data$Experience[i] + 0.3, 
       predictions[i] - 150, 
       paste("Pred:", round(predictions[i])), 
       cex = 0.8, 
       col = "darkorange")
}

# Add title with additional info
mtext(paste("Training data:", nrow(train_data), "points  |  Testing data:", 
            nrow(test_data), "points"), 
      side = 3, line = 0.5, cex = 0.9)

# Reset par to default
par(mar = c(5, 4, 4, 2) + 0.1)