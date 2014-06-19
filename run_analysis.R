## Getting and Cleaning Data Course Project
## The goal is to prepare tidy data that can be used for later analysis.
## The original data are data collected form the accelerometers from the Samsung Galaxy S smartphone.
## The origianl data have been obtained from 
## Files used in this script are:


## 1. Merging training and test set to create one data set
## ----------------------------------------------------------- 
##    Train sets: Creating one data set merging data frames by comlumns
##    X_train.txt, y_train.txt and subject_train.txt have same number of rows, different number of columns
##    Resulting data frame has dimension (7352,563)
      X_train<-read.table("X_train.txt")
      dim(X_train)
      y_train<-read.table("y_train.txt")
      dim(y_train)
      sub_train<-read.table("subject_train.txt")
      dim(sub_train)
      train_set<-cbind(X_train,y_train,sub_train)
      dim(train_set)

##    Test sets: Creating one data set merging data frames by comlumns
##    X_test.txt, y_test.txt and subject_test.txt have same number of rows, different number of columns
##    Resulting data frame has dimension (2947,563)

      X_test<-read.table("X_test.txt")
      dim(X_test)
      y_test<-read.table("y_test.txt")
      dim(y_test)
      sub_test<-read.table("subject_test.txt")
      dim(sub_test)
      test_set<-cbind(X_test,y_test,sub_test)
      dim(test_set)

##    Resulting one data set: Creating one resulting data frame merging train and test data frames by rows
##    Resulting data frame has dimension (10299,563)

      SET<-rbind(train_set,test_set)
      dim(SET)

## 2. Extracting only the measurements on the mean ans standard deviation for each measurement
## -------------------------------------------------------------------------------------------
##    Features of the resulting data frame are listed in features.txt 
      features<-read.table("features.txt")
##    Extracting features with word mean
      nombres<-features[,2]
      index1<-grep("mean[:(:][:):]",nombres)
      names_mean<-nombres[index1]
##    Cleaning obtained features 
      new_names_mean <- gsub("-","_",names_mean)
      new_names_mean <- gsub("[:(:][:):]","",new_names_mean)
      new_names_mean <- gsub("BodyBody","Body",new_names_mean)
##    Extracting features with word std (=standard deviation)
      index2<-grep("std[:(:][:):]",nombres)
      names_std<-nombres[index2]
##    Cleaning obtained features 
      new_names_std <- gsub("-","_",names_std)
      new_names_std <- gsub("[:(:][:):]","",new_names_std)
      new_names_std <- gsub("BodyBody","Body",new_names_std)
##    Creating features for the resulting data frame (SET)
      index<-c(index1,index2,562,563)
      new_labels<-c(new_names_mean, new_names_std,"Activity","Subject")
      matrix<-data.frame(index,new_labels)
      matrix<-matrix[order(matrix$index,matrix$new_labels),]
##    Extracting the measurements on the mean and standard deviation
      tidy_data<-SET[matrix$index]
##    Dimension of the future tidy data set (10299,68)
      dim(tidy_data)


## 3. Using descriptive activity names to name the activity in the data set
## ------------------------------------------------------------------------
      index_act1<-which(tidy_data[,ncol(tidy_data)-1]==1)
      tidy_data[index_act1,ncol(tidy_data)-1]<-"WALKING"
      index_act2<-which(tidy_data[,ncol(tidy_data)-1]==2)
      tidy_data[index_act2,ncol(tidy_data)-1]<-"WALKING UPSTAIRS"
      index_act3<-which(tidy_data[,ncol(tidy_data)-1]==3)
      tidy_data[index_act3,ncol(tidy_data)-1]<-"WALKING DOWNSTAIRS"
      index_act4<-which(tidy_data[,ncol(tidy_data)-1]==4)
      tidy_data[index_act4,ncol(tidy_data)-1]<-"SITTING"
      index_act5<-which(tidy_data[,ncol(tidy_data)-1]==5)
      tidy_data[index_act5,ncol(tidy_data)-1]<-"STANDING"
      index_act6<-which(tidy_data[,ncol(tidy_data)-1]==6)
      tidy_data[index_act6,ncol(tidy_data)-1]<-"LAYING"


## 4. Appropiately labelling the data set with descriptive activity names   
## ----------------------------------------------------------------------
      names(tidy_data)<-matrix$new_labels
      write.table(tidy_data, file = "tidy_data_set1.txt", sep = " ", col.names = colnames(tidy_data),row.names=F)
      print("First tidy data set created")


## 5. Creating a second, independent tidy data set with the average of each variable for each
##    activity and each subject
## ------------------------------------------------------------------------------------------
      library(reshape2)
##    Melting data frame using variables Subject and activity
      tidy_data_melt<-melt(tidy_data,id=c("Subject","Activity"))
      tidy_data_cast<-dcast(tidy_data_melt, Subject + Activity ~ variable, mean)
      dim(tidy_data_cast)
##    Giving new name's features
      names(tidy_data_cast) <- gsub("tB","Avg_tB",names(tidy_data_cast))
      names(tidy_data_cast) <- gsub("tG","Avg_tG",names(tidy_data_cast))
      names(tidy_data_cast) <- gsub("fB","Avg_fB",names(tidy_data_cast))
      names(tidy_data_cast) <- gsub("fG","Avg_fG",names(tidy_data_cast))

      write.table(tidy_data_cast, file = "tidy_data_set2.txt", sep = " ", col.names = colnames(tidy_data_cast),row.names=F)
      print("Second tidy data set created")
