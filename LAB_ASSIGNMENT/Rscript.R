library(readr)
library(tidyverse)
library(lubridate)
library(janitor)
# Read as raw text
raw_lines <- readLines("C:/Users/fateen saliha/Downloads/archive/Unclean Dataset.csv")
# Replace pipe | with comma
cleaned_lines <- str_replace_all(raw_lines, "\\|", ",")
# Save temp file
writeLines(cleaned_lines, "C:/Users/fateen saliha/Downloads/archive/temp_clean.csv")
# Load into R — read ALL as text first
df <- read.csv("C:/Users/fateen saliha/Downloads/archive/temp_clean.csv",header = TRUE, strip.white = TRUE, na.strings = c("NA", "", " "), fill = TRUE,col.names = paste0("V", 1:20))  # allow extra columns
df <- df[, 1:8]
colnames(df) <- c("student_id", "first_name", "last_name", "age","gender", "course", "enrollment_date", "total_payments")
glimpse(df)
df <- df %>%
   mutate(student_id = str_extract(student_id, "^\\s*[0-9]{2,3}")) %>%
   filter(!is.na(student_id)) %>%
   mutate(student_id = as.numeric(str_trim(student_id)))
unique(df$student_id)
nrow(df)
df <- df %>% distinct()
df <- df %>% distinct(student_id, .keep_all = TRUE)
nrow(df)
df <- df %>%
   mutate(
   first_name = str_trim(first_name),
   last_name  = str_trim(last_name))
df <- df %>%
   mutate(age = as.numeric(str_trim(age))) %>%
   mutate(age = ifelse(age < 15 | age > 80, NA, age))
sum(is.na(df$age))
df <- df %>%
   mutate(gender = str_extract(gender, "[MmFf]") %>% str_to_upper())
unique(df$gender)
df <- df %>%
   mutate(course = case_when(
   str_detect(course, regex("machine learn", ignore_case = TRUE)) ~ "Machine Learning",
   str_detect(course, regex("web dev",       ignore_case = TRUE)) ~ "Web Development",
   str_detect(course, regex("data sci",      ignore_case = TRUE)) ~ "Data Science",
   str_detect(course, regex("data anal",     ignore_case = TRUE)) ~ "Data Analysis",
   str_detect(course, regex("cyber",         ignore_case = TRUE)) ~ "Cyber Security",
   is.na(course)                                                  ~ "Unknown",
   TRUE ~ course))
unique(df$course)
df <- df %>%
   mutate(enrollment_date = parse_date_time(str_trim(enrollment_date),
          orders = c("Ymd", "dmy", "d-b-y", "mdy"), quiet = TRUE))
sum(is.na(df$enrollment_date))
df <- df %>%
   mutate(total_payments = str_remove_all(total_payments, "[^0-9.]") %>%
                na_if("") %>%
                as.numeric())
sum(is.na(df$total_payments))
nrow(df)
colSums(is.na(df))
glimpse(df)
head(df, 20)
write.csv(df, "C:/Users/fateen saliha/Downloads/archive/Cleaned_Dataset.csv",
               row.names = FALSE)