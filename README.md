### The goal of the course work
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### The intuition and major steps behind the script: run_analysis.R
1. download and unzip the file.
2. extract and read labels & features.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. load and read the train & test dataset
5. train & test merge
6. re-order & reshap
7. export

### A summary of dataset_tidy.txt
'data.frame':	180 obs. of  3 variables:

 $ subject : Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 2 2 2 2 ...
 
 $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
 
 $ variable: num  -0.163 -0.307 -0.123 -0.585 -0.604 ...


