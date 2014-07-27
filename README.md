##  Getting and Cleaning Data Course Project

###Overview

This analysis uses the Human Activity Recognition Using Smartphones Dataset.
The test and training datasets are combined, the labels and variables are made more readable, 
and the mean and standard deviation measurements are retained from the entire dataset.
Finally, the retained measurements are averaged over the subject, activity pairs. 

###Input data
 
The Human Activity Recognition Using Smartphones Dataset, Version 1.0 [1]
has been provided by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, 
and Luca Oneto;  Smartlab - Non Linear Complex Systems Laboratory;
DITEN - Università degli Studi di Genova
Via Opera Pia 11A, I-16145, Genoa, Italy
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,
 we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
 The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
 partitioned into two sets, where 70% of the volunteers was selected for generating the training data
 and 30% the test data. 

More information is provided in the README.txt for the input data.

The data files used for this analysis are as follows:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
   Its range is from 1 to 30. 

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels.

- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample.
   Its range is from 1 to 30. 

###Output Data

The files produced for this analysis are as follows:

- 'averagedActivityData.txt: the final data output, 180 observations of 68 variables

- 'run_analysis.R': R code that produced averagedActivityData.txt

- 'DataDictionary.md': defines the variables in averagedActivityData.txt

- 'README.md


###Analysis Process

1.  The features list and activity label reference table files are loaded into R.
2.  The test subjects, labels, and data files are read in.  The variables are renamed 
    to describe the columns. 
3.  The training subjects, labels, and data files are read in.  The variables are renamed 
    to describe the columns. 
4.  The columns from the test subjects, labels, and data are combined into a single data frame.
5.  The columns from the training subjects, labels, and data are combined into a single data frame.
6.  The rows of the combined test data and the combined training data are combined into a 
    single data frame.  This produces a table of 10,299 observations of 563 variables.
7.  Using the information from the label reference table, the 'activity' label numbers are replaced 
    with their descriptive character labels.
8.  The only features that are to be included are the mean and standard deviation measurements.  
    A vector of the features that contain "mean()" or "std()" is created.
9.  A new data frame is extracted with the columns 'subject', 'activity', and the desired mean and 
    standard deviation measurements. This produces a table with 68 variables.
10. The measurements in this data set are averaged over each 'subject'/'activity' pair to produce a 
    new dataset of 180 observations of 68 variables.
11. The new measurement variable names are renamed to be prefixed by 'avg-of-"
12. The resulting data set is written out to file 'averagedActivityData.txt'



Footnote:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be
addressed to the authors or their institutions for its use or misuse. Any commercial 
use is prohibited.

