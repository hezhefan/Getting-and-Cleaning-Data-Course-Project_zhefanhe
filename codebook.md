### Dataset Information

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Source of data could be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Procedure of getting the dataset cleaned

1. download and unzip the file.
2. extract and read labels & features.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. load and read the train & test dataset
5. train & test merge
6. re-order & reshap
7. export


### Dataset Summary
180 obs. of  68  variables
#### activity means the name of five six sub-tests required to conduct
WALKING   
WALKING_UPSTAIRS 
WALKING_DOWNSTAIRS            
SITTING           
STANDING             
LAYING 

#### subject means the number of volunteers paticipating the test

#### variables means the aggregated mean value of their score of test
[1] "tBodyAcc-mean-X"               "tBodyAcc-mean-Y"               "tBodyAcc-mean-Z"               "tBodyAcc-std-X"               
 [5] "tBodyAcc-std-Y"                "tBodyAcc-std-Z"                "tGravityAcc-mean-X"            "tGravityAcc-mean-Y"           
 [9] "tGravityAcc-mean-Z"            "tGravityAcc-std-X"             "tGravityAcc-std-Y"             "tGravityAcc-std-Z"            
[13] "tBodyAccJerk-mean-X"           "tBodyAccJerk-mean-Y"           "tBodyAccJerk-mean-Z"           "tBodyAccJerk-std-X"           
[17] "tBodyAccJerk-std-Y"            "tBodyAccJerk-std-Z"            "tBodyGyro-mean-X"              "tBodyGyro-mean-Y"             
[21] "tBodyGyro-mean-Z"              "tBodyGyro-std-X"               "tBodyGyro-std-Y"               "tBodyGyro-std-Z"              
[25] "tBodyGyroJerk-mean-X"          "tBodyGyroJerk-mean-Y"          "tBodyGyroJerk-mean-Z"          "tBodyGyroJerk-std-X"          
[29] "tBodyGyroJerk-std-Y"           "tBodyGyroJerk-std-Z"           "tBodyAccMag-mean"              "tBodyAccMag-std"              
[33] "tGravityAccMag-mean"           "tGravityAccMag-std"            "tBodyAccJerkMag-mean"          "tBodyAccJerkMag-std"          
[37] "tBodyGyroMag-mean"             "tBodyGyroMag-std"              "tBodyGyroJerkMag-mean"         "tBodyGyroJerkMag-std"         
[41] "fBodyAcc-mean-X"               "fBodyAcc-mean-Y"               "fBodyAcc-mean-Z"               "fBodyAcc-std-X"               
[45] "fBodyAcc-std-Y"                "fBodyAcc-std-Z"                "fBodyAcc-meanFreq-X"           "fBodyAcc-meanFreq-Y"          
[49] "fBodyAcc-meanFreq-Z"           "fBodyAccJerk-mean-X"           "fBodyAccJerk-mean-Y"           "fBodyAccJerk-mean-Z"          
[53] "fBodyAccJerk-std-X"            "fBodyAccJerk-std-Y"            "fBodyAccJerk-std-Z"            "fBodyAccJerk-meanFreq-X"      
[57] "fBodyAccJerk-meanFreq-Y"       "fBodyAccJerk-meanFreq-Z"       "fBodyGyro-mean-X"              "fBodyGyro-mean-Y"             
[61] "fBodyGyro-mean-Z"              "fBodyGyro-std-X"               "fBodyGyro-std-Y"               "fBodyGyro-std-Z"              
[65] "fBodyGyro-meanFreq-X"          "fBodyGyro-meanFreq-Y"          "fBodyGyro-meanFreq-Z"          "fBodyAccMag-mean"             
[69] "fBodyAccMag-std"               "fBodyAccMag-meanFreq"          "fBodyBodyAccJerkMag-mean"      "fBodyBodyAccJerkMag-std"      
[73] "fBodyBodyAccJerkMag-meanFreq"  "fBodyBodyGyroMag-mean"         "fBodyBodyGyroMag-std"          "fBodyBodyGyroMag-meanFreq"    
[77] "fBodyBodyGyroJerkMag-mean"     "fBodyBodyGyroJerkMag-std"      "fBodyBodyGyroJerkMag-meanFreq"
 
