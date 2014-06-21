GETTING AND CLEANING DATA

The goal is preparing tidy data to be used for later analysis, through 
a processing script which starts from row data.

Raw data set consists of the triaxial acceleration and triaxial angular velocity
of 30 volunteers performing six activities (walking, walking upstairs, wal2king do1wn stairs, 
sitting, standing, laying). Acceleration and angular velocity were captured with the embedded
accelerometer and gyriscope of a smartphone (Samsung Galaxy S II) which volunteers weared.

Raw data can be obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


You can find the following files:
- README.txt
- run_analysis.R: R script processing the raw data set to obtain a tidy data set, 
  created with R version 3.0.1 on Windows XP
- CodeBook.md: Code book describing each variable and its values in the tidy data set








R SCRIPT DESCRIPTION


Before running the R script:

1.   downloads .zip file
2.   unzips the archive
3.   copy the following files into your working directory: 
4.   
          - X_train.txt : triaxial acceleration and angular velocity in time and frequancy domain, measurements
          - y_train.txt : activity, integer from 1 to 6
          - subject_train.txt: subject, integer from 1 to 30
          - X_test.txt : same as for train
          - y_test.txt  : same as for train
          - subject_test.txt : same as for train
          - features.txt: list of all features
          
4.   copy run_analysis.R in your working directory
5.   run the script on R Console with source("run_analysis.R")
6.   tidy data sets will be saved in 

          - tidy_sata_set1.txt,
          - tidy_data_set2.txt.
          
     For loading and inspecting them 
     
          - set1 <- read.table("tidy_data_set1.txt", header=T)
          - set2 <- read.table("tidy_data_set2.txt", header=T)
          
     respectively.     

            
            
        

run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.

   The dimensions of the train and test sets suggest:
     - creating a bigger train set, adding to X_train matrix the comlums of y_train and subject_train (cbind() function)
     - creating a bigger test set, adding to X_test matrix the comlumns of y_test and subject_test (cbind() function)
     - clipping together the different observations in the bigger train and test sets (rbind() function)


2. Extracts only the measurements on the mean and standard deviation for each measurement. 

   From file features.txt the script extracts (grep() funciton) the indices (from 1 to 561) of the features whose name 
   contains the patterns "mean()" and "std()". 
   Two more indices are added to the list, the indices of the activity (562) and the subject (563).Thus, set from step 1
   is reduced considering the j-comlumn, with j varying in the vector of indices found as mentioned.
   The inspection of features.txt reveals the presence of other names with the word mean ("meanFreq()"), but this 
   actually does not correspond to the mean of the measurement to which is associated. This is the reason for which they    are not considered.
   At this step the script extracts and saves also the names of the features containing the patterns mean() and std()
   and modifies these names in order to use them as names for the resulting tidy data set. with the objetive of making      the names readable in R, puntuation as "-" and "()" have to be removed (gsub() function).
   Furthrmore in feature.txt there is a mistake with some features whose name contains twice the word Body          
   (tBodyBody...). In this case the script eliminates once the word Body.


3. Uses descriptive activity names to name the activities in the data set.

   The script finds (which() function) each activity integer (1-6) to substitude it with the corresponding descriptive      activity name.


4. Appropriately labels the data set with descriptive variable names.

   The script assign to the data frame obtained at step 4, the names obtained at step 2.
   This first tidy data set is saved in tidy_data_set1.txt. 
   For loading it: read.table("tidy_data_set1.txt", header=T)

    
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

   The second tidy data set is obtained through two steps. Firstly, the tidy data set obtained at step 4 is re-organized 
   so that for each subject (from 1 to 30) and each activity (melt() function) there exist a comlumn with the     
   name of the measurements and another with the corresponding value (nrow=679734, ncol=4). Finally the average of all      variable is calculated (cast() function) for each subject and each activity and the data frame reorganized (nrow=180,    ncol=68). The name of the meaurements are also modified, adding to the previous names the prefix "Avg_" (gsub())    
   standing for average.
   This second tidy data set is saved in tidy_data_set2.txt. 
   For loading it: read.table("tidy_data_set2.txt", header=T)



LICENCE:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. 

Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
     
