### DATA DICTIONARY

    - Original data from:
      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    - All variable concerning measurements have been normalized and bounded within [-1,1]
    - 16th June 2014



### TIDY DATA SET 1



    tBodyAcc_mean_X, _Y, _Z 
           Mean value of time domain body acceleration signal in X, Y, Z direction respectively 
           from the accelometer

tBodyAcc\_std\_X, *Y, *Z Standart deviation of time domain body
acceleration signal in X, Y, Z direction respectively from the
accelometer

tGravityAcc\_mean\_X, *Y, *Z Mean value of time domain gravity
acceleration signal in X, Y, Z direction respectively from the
accelometer

tGravityAcc\_std\_X, *Y, *Z Standart deviation of time domain gravity
acceleration signal in X, Y, Z direction respectively from the
accelometer

tBodyAccJerk\_mean\_X, *Y, *Z Mean value of Jerk signal (time derivative
of body acceleration) in X, Y, Z direction respectively from the
accelometer

tBodyAccJerk\_std\_X, *Y, *Z Standard deviation of Jerk signal (time
derivative of body acceleration) in X, Y, Z direction respectively from
the accelometer

tBodyGyro\_mean\_X, *Y, *Z Mean value of time domain body acceleration
signal in X, Y, Z direction respectively from the gyroscope

tBodyGyro\_std\_X, *Y, *Z Standard deviation of time domain body
acceleration signal in X, Y, Z direction respectively from the gyroscope

tBodyGyroJerk\_mean\_X, *Y, *Z Mean value of Jerk signal (time
derivative of body acceleration) in X, Y, Z direction respectively from
the gyroscope

tBodyGyroJerk\_std\_X, *Y, *Z Standard deviation of Jerk signal (time
derivative of body acceleration) in X, Y, Z direction respectively from
the gyroscope

tBodyAccMag\_mean Mean value of the magnitud of time domain body
acceleration signal from the accelerometer

tBodyAccMag\_std Satndard deviation of the magnitud of time domain body
acceleration signal from the accelerometer

tGravityAccMag\_mean Mean value of the magnitud of time domain gravity
acceleration signal from the accelerometer

tGravityAccMag\_std Satndard deviation of the magnitud of time domain
gravity acceleration signal from the accelerometer

tBodyAccJerkMag\_mean Mean value of the magnitud of Jerk signal (time
derivative of body acceleration) from the accelerometer

tBodyAccJerkMag\_std Satndard deviation of the magnitud of Jerk signal
(time derivative of body acceleration) from the accelerometer

tBodyGyroMag\_mean Mean value of the magnitud of time domain body
acceleration signal from the gyroscope

tBodyGyroMag\_std Standard deviation of the magnitud of time domain body
acceleration signal from the gyroscope

tBodyGyroJerkMag\_mean Mean value of the magnitud of Jerk signal (time
derivative of body acceleration) from the gyroscope

tBodyGyroJerkMag\_std Satndard deviation of the magnitud of Jerk signal
(time derivative of body acceleration) from the gyroscope

fBodyAcc\_mean\_X, *Y, *Z Mean value of frecuency domain body
acceleration signal in X, Y, Z direction respectively from the
accelometer

fBodyAcc\_std\_X, *Y, *Z Satndard deviation of frecuency domain body
acceleration signal in X, Y, Z direction respectively from the
accelometer

fBodyAccJerk\_mean\_X, *Y, *Z Mean value of frecuency domain Jerk signal
(time derivative of body acceleration) in X, Y, Z direction respectively
from the accelometer

fBodyAccJerk\_std\_X Standard deviation of frecuency domain Jerk signal
(time derivative of body acceleration) in X, Y, Z direction respectively
from the accelometer

fBodyGyro\_mean\_X, \_Y, Z Mean value of frecuency domain body
acceleration signal in X, Y, Z direction respectively from the gyroscope

fBodyGyro\_std\_X Satndard deviation of frecuency domain body
acceleration signal in X, Y, Z direction respectively from the gyroscope

fBodyAccMag\_mean Mean value of the magnitud of frequency domain body
acceleration signal from the accelerometer

fBodyAccMag\_std Standard deviation of the magnitud of frequency domain
body acceleration signal from the accelerometer

fBodyAccJerkMag\_mean Mean value of the magnitud of frequency domain
Jerk signal (time derivative of body acceleration) from the
accelerometer

fBodyAccJerkMag\_std Standard deviation of the magnitud of frequency
domain Jerk signal (time derivative of body acceleration) from the
accelerometer

fBodyGyroMag\_mean Mean value of the magnitud of frequency domain body
acceleration signal from the gyroscope

fBodyGyroMag\_std Standard deviation of the magnitud of frequency domain
body acceleration signal from the gyroscope

fBodyGyroJerkMag\_mean Mean value of the magnitud of frequency domain
Jerk signal (time derivative of body acceleration) from the gyroscope

fBodyGyroJerkMag\_std Standard deviation of the magnitud of frequency
domain Jerk signal (time derivative of body acceleration) from the
gyroscope

Activity Activity label - WALKING - WALKING UPSTAIRS - WALKING
DOWNSTAIRS - SITTING - STAYING - LAYING

Subject Identifier of the subject who carried out the experiment 1... 30
integer identifier

TIDY DATA SET 2
---------------

Subject As in TIDY DATA SET 1

Activity As in TIDY DATA SET 1

All other variables are average values over each subject and activity of
the variables in TIDY DATA SET 1:

Avg\_tBodyAcc\_mean\_X, *Y, *Z Average value over each subject and
activity of the mean value of time domain body acceleration signal in X,
Y, Z direction respectively from the accelometer

Avg\_tBodyAcc\_std\_X, *Y, *Z Average value over each subject and
activity of the standart deviation of time domain body acceleration
signal in X, Y, Z direction respectively from the accelometer

....

....

....

Aveg\_fBodyGyroJerkMag\_std Average value over each subject and activity
of the standard deviation of the magnitud of frequency domain Jerk
signal (time derivative of body acceleration) from the gyroscope
