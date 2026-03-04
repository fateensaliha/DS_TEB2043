library(readr)
student_data <- read_csv("student_data.csv")
install.packages("dplyr")
library(dplyr)

#Introduction
View(student_data)
summary(student_data)
head(student_data)
tail(student_data)

#Filter
#1.student_fail
student_fail <- student_data %>% filter(final_exam_mark <40)
View(student_fail)

#2. Arrange student data
mydata <- student_data%>% filter(final_exam_mark>40)%>% arrange(final_exam_mark)
View(mydata)
arrange(desc(final_exam_mark))

mydata1<- student_data %>% filter(final_exam_mark > 40) %>%
arrange(desc(final_exam_mark))
View(mydata1)

#3. Select
mydata <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata)
glimpse(mydata)

#4. Mutate
mydata4 = student_data%>% mutate(Total_Mark=(coursework_mark + final_exam_mark/200*100))
View(mydata4)

#Descriptive Analytics
data("iris")
str(iris)
summary(iris)

A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)
quantile(A,0.25)
quantile(A,0.75)
IQR(A)

#Histogram
hist(iris$Sepal.Length, main = "Histogram of Sepal Length", xlab = "Sepal Length (cm)", ylab = "Frequency", col = "lightblue", border = "black")

#Box Plot
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal Length by Species", xlab = "Species", ylab = "Sepal Length(cm)", col = c("lightgreen", "lightpink", "lightyellow"))

#Scatter Plot
plot(iris$Sepal.Length, iris$Petal.Length, main = "Sepal Length vs Petal Length", xlab = "Sepal Length(cm)", ylab = "Petal Length(cm)", col = as.numeric(iris$Species), pch = 19)

#Handling Outliers
library(readr)
dfplayers<-read.csv("players.csv")
is.na(players)
median_age <- median(dfplayers$Age, na.rm =TRUE)
data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")
first_q<-quantile(data,0.25)
ue<-third_q + 1.5 * iqr
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new
data_new <- data
avg <- round(mean(data_new))  
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new
data_new <- data
data_new[data_new<le] <- le
data_new[data_new>ue] <- ue
data_new
boxplot(data_new, main = "Boxplot")