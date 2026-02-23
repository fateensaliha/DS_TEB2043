emp.data <- data.frame(
  +     emp_id = c (1:5),
  +     emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  +     salary = c(623.3,515.2,611.0,729.0,843.25))
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2)
print(my_matrix)
df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)
names(df_from_matrix) <- c('col_1', 'col_2', 'col_3')
print(df_from_matrix)
my_list <- list(rating=1:4,
                +                 animal=c('koala', 'hedgehog', 'sloth', 'panda'),
                +                 country=c('Australia', 'Italy', 'Peru', 'China'),
                +                 avg_sleep_hours=c(21, 18, 17, 10))
print(my_list)
super_sleepers <- data.frame(my_list)
print(super_sleepers)
print(emp.data)
str(emp.data)
print(summary(emp.data))
print(dim(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))
print(emp.data$salary)
print(emp.data[["salary"]])
print(emp.data[3])
result <- emp.data[1:2,]
print(result)
# Add the "dept" column.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)
emp.newdata<- cbind(emp.data,
                    +                     start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", 
                                                                 +                                            "2014-05-11","2015-03-27")))
# Create the second data frame
emp.newdata <- data.frame(
    +     emp_id = c (6:8),
    +     emp_name = c("Rasmi","Pranab","Tusar"),
    +     salary = c(578.0,722.5,632.8),
    +     dept = c("IT","Operations","Finance"))
# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)
# Remove the second row and first column
result <- emp.data [-c(2), -c(1)]
print(result)
friend.data <- data.frame(
  +     friend_id = c(1:5),
  +     friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  +     location = c("Kolkata", "Delhi", "Bangalore", "Hyderabad", "Chennai"))
print("Original Data Frame:")
print(friend.data)
print("Structure of Original Data Frame:")
str(friend.data)
friend.data$age <- c(35, 38, 42, 36, 40)
friend.data$birthday <- as.Date(c("1989-05-15", "1986-08-22", "1982-03-10", 
                                    +                                   "1988-11-30", "1984-07-18"))
friend.data$is_active <- c(TRUE, TRUE, FALSE, TRUE, TRUE)
friend.data$monthly_expense <- c(2500.50, 3200.75, 1800.25, 2900.00, 4100.60)
print("Data Frame after adding new columns:")
print(friend.data)
print("Structure after adding columns:")
str(friend.data)
print(friend.data)