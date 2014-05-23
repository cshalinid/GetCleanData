GetCleanData
============

Getting and Cleaning Data course assignment

##Data Processing
The data X_train, X_test,  Y_Train, Y_test, subject_train and subject_test are merged into one data frame.
X-train and X_test are subsetted to consider on the mean and stndard deviation columns.
This is achived by using "grep()" to look for all columns with name having "mean" and "std".
Case of the pattern is ignored. The colnames for the dataframe is fetched from features.txt file.

This subset has 86 columns out of original 561 columns or features.
2 more columns SubjectID and Activity are added.

Finally the Master data frame rows are collapsed to create  tidy data set with the average of each variable for each activity and each subject. 

The above mentioned tidy data set is accomplished in following manner:
1. The spliting(split()) the Master data frame by activity (are R factors which are named as in activity_labels file)
2.          For each split, again a split() is done by SubjectID
3.              mean for all features is computed using "colMeans()" for each subjectID
4.              tidy data[i] = mean above 
5.          end of tidy data loop

Save the tidy date using write.table() api into a txt file.

