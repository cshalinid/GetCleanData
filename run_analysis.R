
## This script will create a master file from
## train and test data available in UCI HAR Dataset/train
## and UCI HAR Dataset/test directories

#setwd("E:/coursera/dataScienceSpeclization/GettingCleaningData/project")

#training data extract
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
features<-read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
colnames(X_train)<-features[,2]

#X_train<-X_orig #backup
#filter out mean and std columns only
index_std<-grep("std",colnames(X_train),ignore.case=F)
index_mean<-grep("mean",colnames(X_train),ignore.case=F)

X_train<-X_train[,c(index_std,index_mean)]
#colnames(X_train)<-features[c(index_std,index_mean),2]

Y_train<-scan("UCI HAR Dataset/train/Y_train.txt",quiet=T,)
X_train<-cbind(Activity=Y_train, X_train)


subject_train<-scan("UCI HAR Dataset/train/subject_train.txt",quiet=T,)
X_train<-cbind(SubjectID=subject_train, X_train)
#colnames(X_train)[1]<-"SubjectID"

#Test data extract
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
X_test<-X_test[,c(index_std,index_mean)]
colnames(X_test)<-features[c(index_std,index_mean),2]

Y_test<-scan("UCI HAR Dataset/test/Y_test.txt",quiet=T,)
X_test<-cbind(Activity=Y_test, X_test)

subject_test<-scan("UCI HAR Dataset/test/subject_test.txt",quiet=T,)
X_test<-cbind(SubjectID=subject_test, X_test)



#creat master data
X_master<- rbind(X_train, X_test)
labels_activity<-read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
X_master$Activity<-as.factor(X_master$Activity)
levels(X_master$Activity)<-labels_activity[,2]


#propDmg<-ddply(stormData,.(EVTYPE,PROPDMGEXP), summarize,PROPDMG=sum(PROPDMG))
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#library(plyr)

#split data by activit
#s_activity<-split(X_master,X_master$Activity)
col_n<-ncol(X_master)
s<-split(X_master,X_master$Activity)
X_tidy<-X_master[1,]
tidy_index<-1
for (i in 1:length(s)) {
      s_subject<- split(s[[i]],s[[i]]$SubjectID)
      for(j in 1:length(s_subject)){
          mean_sub<-colMeans(s_subject[[j]][,3:col_n])
          mean_sub<-unname(mean_sub)
          X_tidy[tidy_index,3:col_n]<-mean_sub
          X_tidy[tidy_index,1]<-s_subject[[j]]$SubjectID[1]
          X_tidy[tidy_index,2]<-s_subject[[j]]$Activity[2]
          tidy_index=tidy_index+1
      }
}
#save the tidy data to a text file
write.table(X_tidy,"Tidy_smasung_table.txt")