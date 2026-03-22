tidy_data <- aggregate(. ~ subject + activity, data = data, FUN = mean)
library(dplyr)

features <- read.table("features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("activity_labels.txt", col.names = c("id", "activity"))

X_train <- read.table("train/X_train.txt")
X_test  <- read.table("test/X_test.txt")

y_train <- read.table("train/y_train.txt")
y_test  <- read.table("test/y_test.txt")

subject_train <- read.table("train/subject_train.txt")
subject_test  <- read.table("test/subject_test.txt")

colnames(X_train) <- features$feature
colnames(X_test)  <- features$feature

colnames(y_train) <- "activity"
colnames(y_test)  <- "activity"

colnames(subject_train) <- "subject"
colnames(subject_test)  <- "subject"

X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

data <- cbind(subject, y, X)

selected <- grep("mean\\(\\)|std\\(\\)", colnames(data))
data <- data[, c(1, 2, selected)]

data$activity <- factor(data$activity,
                        levels = activity_labels$id,
                        labels = activity_labels$activity)

tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean))