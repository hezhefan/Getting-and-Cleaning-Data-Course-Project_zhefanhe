##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement.
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive variable names.
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.#


library(reshape2)
library(dplyr)
library(data.table)
library(readr)
## download and unzip the file

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path <- "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R"
setwd(path)
download.file(url = fileurl, file.path(path, "final.zip"))
unzip(zipfile = "final.zip")


## extract and read labels & features
labels <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/activity_labels.txt")
features <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/features.txt")

## Extracts only the measurements on the mean and standard deviation for each measurement.
features_selected_rows <- grep(pattern = ".*mean.*|.*std.*", features[, 2])
features_selected <- features[features_selected_rows, 2]
features_cleaned <- gsub("[()]", "", features_selected)

## load and read the train & test dataset
train_X <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/train/X_train.txt")
train_X <- select(train_X, features_selected_rows)
train_Y <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/train/Y_train.txt")


test_X <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/test/X_test.txt")
test_X <- select(test_X, features_selected_rows)
test_Y <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/test/Y_test.txt")

test_subject <- read.table(file = "/Users/hezhefan/Desktop/Data Analysis/Getting and Cleaning Data with R/UCI HAR Dataset/test/subject_test.txt")


train <- cbind(train_Y, train_subject, train_X)
test <- cbind(test_Y, test_subject, test_X)


## train & test merge
dataset <- rbind(train, test)
dataset
names <- c("activity", "subject", as.character(features_cleaned))
colnames(dataset) <- names

## re-order & reshap
dataset$activity <- factor(dataset$activity, levels = labels[ ,1], labels = labels[ ,2])
dataset$subject <- as.factor(dataset$subject)


dataset_melt <- melt(dataset, id.vars = c("activity", "subject"), variable.name = "variable")
dataset_tidy <- dcast(dataset_melt, subject + activity ~ "variable", mean)
str(dataset_tidy)

## export
write.table(x = dataset_tidy, file = "dataset_tidy", quote = FALSE, row.names = FALSE)
unlist(features_cleaned)