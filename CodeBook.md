### DATA DICTIONARY

    - Original data from:
      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    - All variable concerning measurements have been normalized and bounded within [-1,1]
    - 16th June 2014



### TIDY DATA SET 1



    tBodyAcc_mean_X, _Y, _Z 
           Mean value of time domain body acceleration signal in X, Y, Z direction respectively 
           from the accelometer

    tBodyAcc_std_X, _Y, _Z 
           Standart deviation of time domain body acceleration signal in X, Y, Z direction respectively 
           from the accelometer

    tGravityAcc_mean_X, _Y, _Z 
           Mean value of time domain gravity acceleration signal in X, Y, Z direction respectively 
           from the accelometer

    tGravityAcc_std_X, _Y, _Z 
           Standart deviation of time domain gravity acceleration signal in X, Y, Z direction respectively
           from the accelometer

    tBodyAccJerk_mean_X, _Y, _Z 
           Mean value of Jerk signal (time derivative of body acceleration) in X, Y, Z direction respectively
           from the accelometer

    tBodyAccJerk_std_X, _Y, _Z 
          Standard deviation of Jerk signal (time derivative of body acceleration) in X, Y, Z direction
          respectively from the accelometer

    tBodyGyro_mean_X, _Y, _Z 
          Mean value of time domain body acceleration signal in X, Y, Z direction respectively 
          from the gyroscope
    
    tBodyGyro_std_X, _Y, _Z 
          Standard deviation of time domain body acceleration signal in X, Y, Z direction respectively 
          from the gyroscope

    tBodyGyroJerk_mean_X, _Y, _Z 
          Mean value of Jerk signal (time derivative of body acceleration) in X, Y, Z direction respectively
          from the gyroscope

    tBodyGyroJerk_std_X, _Y, _Z 
          Standard deviation of Jerk signal (time derivative of body acceleration) in X, Y, Z direction 
          respectively from the gyroscope

    tBodyAccMag_mean
          Mean value of the magnitud of time domain body acceleration signal from the accelerometer

    tBodyAccMag\_std 
          Standard deviation of the magnitud of time domain body acceleration signal from the accelerometer

    tGravityAccMag_mean
          Mean value of the magnitud of time domain gravity acceleration signal from the accelerometer

    tGravityAccMag_std 
          Standard deviation of the magnitud of time domain gravity acceleration signal from the accelerometer

    tBodyAccJerkMag_mean 
          Mean value of the magnitud of Jerk signal (time derivative of body acceleration) from the accelerometer

    tBodyAccJerkMag_std 
          Standard deviation of the magnitud of Jerk signal (time derivative of body acceleration) from the
          accelerometer

    tBodyGyroMag_mean 
          Mean value of the magnitud of time domain body acceleration signal from the gyroscope

    tBodyGyroMag_std 
          Standard deviation of the magnitud of time domain body acceleration signal from the gyroscope

    tBodyGyroJerkMag_mean 
          Mean value of the magnitud of Jerk signal (time derivative of body acceleration) from the gyroscope

    tBodyGyroJerkMag_std
          Standard deviation of the magnitud of Jerk signal (time derivative of body acceleration) from the gyroscope

    fBodyAcc_mean_X, _Y, _Z 
          Mean value of frecuency domain body acceleration signal in X, Y, Z direction respectively
          from the accelometer

    fBodyAcc_std_X, _Y, _Z 
          Standard deviation of frecuency domain body acceleration signal in X, Y, Z direction respectively 
          from the accelometer

    fBodyAccJerk_mean_X, _Y, _Z 
          Mean value of frecuency domain Jerk signal (time derivative of body acceleration) in X, Y, Z direction                   respectively from the accelometer

    fBodyAccJerk_std_X 
          Standard deviation of frecuency domain Jerk signal (time derivative of body acceleration) in X, Y, Z 
          direction respectively from the accelometer

    fBodyGyro_mean\_X, _Y, _Z 
          Mean value of frecuency domain body acceleration signal in X, Y, Z direction respectively 
          from the gyroscope

    fBodyGyro_std_X 
          Standard deviation of frecuency domain body acceleration signal in X, Y, Z direction respectively
          from the gyroscope

    fBodyAccMag_mean 
          Mean value of the magnitud of frequency domain body acceleration signal from the accelerometer

    fBodyAccMag_std 
          Standard deviation of the magnitud of frequency domain body acceleration signal from the accelerometer

    fBodyAccJerkMag_mean
          Mean value of the magnitud of frequency domain Jerk signal (time derivative of body acceleration) 
          from the accelerometer

    fBodyAccJerkMag_std 
          Standard deviation of the magnitud of frequency domain Jerk signal (time derivative of body acceleration) 
          from the accelerometer

    fBodyGyroMag_mean 
          Mean value of the magnitud of frequency domain body acceleration signal from the gyroscope

    fBodyGyroMag_std 
          Standard deviation of the magnitud of frequency domain body acceleration signal from the gyroscope

    fBodyGyroJerkMag_mean 
          Mean value of the magnitud of frequency domain Jerk signal (time derivative of body acceleration) 
          from the gyroscope

    fBodyGyroJerkMag_std 
          Standard deviation of the magnitud of frequency domain Jerk signal (time derivative of body acceleration)
          from the gyroscope

    Activity 
          Activity label 
          - WALKING 
          - WALKING UPSTAIRS 
          - WALKING DOWNSTAIRS 
          - SITTING 
          - STAYING 
          - LAYING

    Subject 
          Identifier of the subject who carried out the experiment
          1... 30 integer identifier

### TIDY DATA SET 2


    Subject 
          As in TIDY DATA SET 1

    Activity 
          As in TIDY DATA SET 1

    All other variables are average values over each subject and activity of the variables in TIDY DATA SET 1:

    Avg_tBodyAcc_mean_X, _Y, _Z
          Average value over each subject and activity of the mean value of time domain body acceleration signal
          in X, Y, Z direction respectively from the accelometer

    Avg_tBodyAcc_std_X, _Y, _Z 
          Average value over each subject and activity of the standart deviation of time domain body acceleration
          signal in X, Y, Z direction respectively from the accelometer

....

....

....

Aveg\_fBodyGyroJerkMag\_std Average value over each subject and activity
of the standard deviation of the magnitud of frequency domain Jerk
signal (time derivative of body acceleration) from the gyroscope
