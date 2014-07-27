## Getting and Cleaning Data Course Project Data Dictionary

### Input Data 

The data in the input data set included subject number, activity number and a feature set described by the creators 
as follows:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ
 and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
 Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency
 of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
 signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

"Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated
 using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

"Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

"These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals that are used in this analysis: 

mean(): Mean value
std(): Standard deviation

These values are normalized and bounded within [-1,1].

### Output Data

The variables in the resulting data set from this analysis are as follows:

subject - integers, 1 to 30.  Identifies the subject who performed the activity.

activity - character, values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
           The six activities for which the measurements were recorded for each subject.

avg-of-...  - numeric, between [-1,1]. The average of each of the above measurements over each subject/activity pair.
              For example:
                    avg-of-tBodyAcc-mean()-X
                    avg-of-tBodyAcc-mean()-y
                    avg-of-tBodyAcc-mean()-z 
                    avg-of-tBodyAcc-std()-X
                    avg-of-tBodyAcc-std()-y
                    avg-of-tBodyAcc-std()-z,
                    avg-of-tGravityAcc-mean()-X
                    avg-of-tGravityAcc-mean()-Y
             and so on.
 


