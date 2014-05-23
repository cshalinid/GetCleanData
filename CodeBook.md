GetCleanData
============

## Data Processing
The data X_train, X_test,  Y_Train, Y_test, subject_train and subject_test are merged into one data frame.
X-train and X_test are subsetted to consider on the mean and stndard deviation columns.
This is achived by using "grep()" to look for all columns with name having "mean" and "std".
The colnames for the dataframe is fetched from "features.txt" file.

This subset has 79 columns out of original 561 columns or features.
2 more columns SubjectID and Activity are added. Total 81 variables in Tidy data.

Finally the Master data frame rows are collapsed to create  tidy data set with the average of each variable for each activity and each subject. 

The above mentioned tidy data set is accomplished in following manner:


1. ` The spliting(split()) the Master data frame by activity (are R factors which are named as in activity_labels file)`

2. `          For each split, again a split() is done by SubjectID`

3. `              mean for all features is computed using "colMeans()" for each subjectID`

4. `              tidy data[i] = mean above `

5. `          end of tidy data loop`

Save the tidy date using write.table() api into a txt file.



CodeBook for tidy data Person activity table
==============================================
1. `SubjectID`          --  Person ID whose acticity is being monitored

2. `Activity`           --  The activities the subject is performing. There are 6 of them as listed below

              1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING.
                                 
3. `tBodyAcc-std()-X`   --  Standard Deviation of time to obtain Body Accelration in X axis

4. `tBodyAcc-std()-Y`   --  Standard Deviation of time to obtain Body Accelration in Y axis

5. `tBodyAcc-std()-Z`   --  Standard Deviation of time to obtain Body Accelration in Z axis

6. `tGravityAcc-std()-X`    -- Standard Deviation of time to obtain Gravity Accelration in X axis

7. `tGravityAcc-std()-Y`    -- Standard Deviation of time to obtain Gravity Accelration in Y axis

8. `tGravityAcc-std()-Z`    -- Standard Deviation of time to obtain Gravity Accelration in Z axis
9. `tBodyAccJerk-std()-X`   -- Standard Deviation of time to obtain Body Accelration Jerk signals in X axis
10. `tBodyAccJerk-std()-Y`  -- Standard Deviation of time to obtain Body Accelration Jerk signals in Y axis
11. `tBodyAccJerk-std()-Z`  -- Standard Deviation of time to obtain Body Accelration Jerk signals in Z axis
12. `tBodyGyro-std()-X`     -- Standard Deviation of time to obtain Body Gyroscope signal in X axis
13. `tBodyGyro-std()-Y`     -- Standard Deviation of time to obtain Body Gyroscope signal in Y axis
14. `tBodyGyro-std()-Z`     -- Standard Deviation of time to obtain Body Gyroscope signal in Z axis
15. `tBodyGyroJerk-std()-X` -- Standard Deviation of time to obtain Body Gyroscope Jerk signal in X axis
16. `tBodyGyroJerk-std()-Y` -- Standard Deviation of time to obtain Body Gyroscope Jerk signal in Y axis
17. `tBodyGyroJerk-std()-Z` -- Standard Deviation of time to obtain Body Gyroscope Jerk signal in Z axis
18. `tBodyAccMag-std()`     -- Standard Deviation of time to obtain Body Accelartor Magnitude
19. `tGravityAccMag-std()`  -- Standard Deviation of time to obtain Body Gravity Accelarator Magnitude
20. `tBodyAccJerkMag-std()` -- Standard Deviation of time to obtain Body Accelarator Jerk Magnitude
21. `tBodyGyroMag-std()`    -- Standard Deviation of time to obtain Body Gyroscope Magnitude
22. `tBodyGyroJerkMag-std()`  -- Standard Deviation of time to obtain Body Gyroscope Jerk Magnitude
23. `fBodyAcc-std()-X`      -- Standard Deviation of FFT Body Accelration in X axis
24. `fBodyAcc-std()-Y`      -- Standard Deviation of FFT Body Accelration in Y axis
25. `fBodyAcc-std()-Z`      -- Standard Deviation of FFT Body Accelration in Z axis
26. `fBodyAccJerk-std()-X`  -- Standard Deviation of FFT Body Accelration Jerk in X axis
27. `fBodyAccJerk-std()-Y`  -- Standard Deviation of FFT Body Accelration Jerk in Y axis
28. `fBodyAccJerk-std()-Z`  -- Standard Deviation of FFT Body Accelration Jerk in Z axis
29. `fBodyGyro-std()-X`     -- Standard Deviation of FFT Body Gyroscope in X axis
30. `fBodyGyro-std()-Y`     -- Standard Deviation of FFT Body Gyroscope in Y axis
31. `fBodyGyro-std()-Z`     -- Standard Deviation of FFT Body Gyroscope in Z axis
32. `fBodyAccMag-std()`     -- Standard Deviation of FFT Body Accelaration Magnitue
33. `fBodyBodyAccJerkMag-std()`   -- Standard Deviation of FFT Body Accelaration Jerk Magnitue
34. `fBodyBodyGyroMag-std()`      -- Standard Deviation of FFT Body Gyroscope Magnitue
35. `fBodyBodyGyroJerkMag-std()`  -- Standard Deviation of FFT Body Gyroscope Jerk Magnitue
36. `tBodyAcc-mean()-X`           -- Mean of time to obtain Body Accelration in X axis
37. `tBodyAcc-mean()-Y`           -- Mean of time to obtain Body Accelration in Y axis
38. `tBodyAcc-mean()-Z`           -- Mean of time to obtain Body Accelration in Z axis
39. `tGravityAcc-mean()-X`        -- Mean of time to obtain Gravity Accelration in X axis
40. `tGravityAcc-mean()-Y`        -- Mean of time to obtain Gravity Accelration in Y axis
41. `tGravityAcc-mean()-Z`        -- Mean of time to obtain Gravity Accelration in Z axis
42. `tBodyAccJerk-mean()-X`       -- Mean of time to obtain Body Accelration in X axis
43. `tBodyAccJerk-mean()-Y`       -- Mean of time to obtain Body Accelration in Y axis
44. `tBodyAccJerk-mean()-Z`       -- Mean of time to obtain Body Accelration in Z axis
45. `tBodyGyro-mean()-X`          -- Mean of time to obtain Body Gyroscope signal in X axis
46. `tBodyGyro-mean()-Y`          -- Mean of time to obtain Body Gyroscope signal in Y axis
47. `tBodyGyro-mean()-Z`          -- Mean of time to obtain Body Gyroscope signal in Z axis
48. `tBodyGyroJerk-mean()-X`      -- Mean of time to obtain Body Gyroscope Jerk signal in X axis
49. `tBodyGyroJerk-mean()-Y`      -- Mean of time to obtain Body Gyroscope Jerk signal in Y axis  
50. `tBodyGyroJerk-mean()-Z`      -- Mean of time to obtain Body Gyroscope Jerk signal in Z axis
51. `tBodyAccMag-mean()`          -- Mean of time to obtain Body Accelaration Magnitude
52. `tGravityAccMag-mean()`       -- Mean of time to obtain Gravity Accelaration Magnitude
53. `tBodyAccJerkMag-mean()`      -- Mean of time to obtain Body Accelaration Jerk Magnitude
54. `tBodyGyroMag-mean()`         -- Mean of time to obtain Body Gyroscope Magnitude
55. `tBodyGyroJerkMag-mean()`     -- Mean of time to obtain Body Gyroscope Jerk Magnitude
56. `fBodyAcc-mean()-X`           -- Mean of FFT Body Accelration in X axis
57. `fBodyAcc-mean()-Y`           -- Mean of FFT Body Accelration in Y axis
58. `fBodyAcc-mean()-Z`           -- Mean of FFT Body Accelration in Z axis
59. `fBodyAcc-meanFreq()-X`       -- Weighted average of the frequency of FFT Body Accelration in X axis
60. `fBodyAcc-meanFreq()-Y`       -- Weighted average of the frequency of FFT Body Accelration in Y axis
61. `fBodyAcc-meanFreq()-Z`       -- Weighted average of the frequency of FFT Body Accelration in Z axis
62. `fBodyAccJerk-mean()-X`       -- Mean of FFT Body Accelration Jerk in X axis
63. `fBodyAccJerk-mean()-Y`       -- Mean of FFT Body Accelration Jerk in Y axis
64. `fBodyAccJerk-mean()-Z`       -- Mean of FFT Body Accelration Jerk in Z axis
65. `fBodyAccJerk-meanFreq()-X`   -- Weighted average of the frequency of FFT Body Accelration Jerk in X axis
66. `fBodyAccJerk-meanFreq()-Y`   -- Weighted average of the frequency of FFT Body Accelration Jerk in Z axis
67. `fBodyAccJerk-meanFreq()-Z`   -- Weighted average of the frequency of FFT Body Accelration Jerk in Y axis
68. `fBodyGyro-mean()-X`          -- Mean of FFT Body Gyroscope Signal in X axis
69. `fBodyGyro-mean()-Y`          -- Mean of FFT Body Gyroscope Signal in Y axis
70. `fBodyGyro-mean()-Z`          -- Mean of FFT Body Gyroscope Signal in Z axis
71. `fBodyGyro-meanFreq()-X`      -- Weighted average of the frequency of FFT Body Gyroscope signal in X axis
72. `fBodyGyro-meanFreq()-Y`      -- Weighted average of the frequency of FFT Body Gyroscope signal in Y axis
73. `fBodyGyro-meanFreq()-Z`      -- Weighted average of the frequency of FFT Body Gyroscope signal in Z axis
74. `fBodyAccMag-mean()`          -- Mean of time to obtain Body Accelaration Magnitude
75. `fBodyAccMag-meanFreq()`      -- Weighted average of the frequency of FFT Body Accelaration Magnitude
76. `fBodyBodyAccJerkMag-mean()`  -- Mean of FFT Body Accelaration Jerk Magnitude  
77. `fBodyBodyAccJerkMag-meanFreq()`  -- Weighted average of the frequency of FFT Body Accelaration Jerk Magnitude
78. `fBodyBodyGyroMag-mean()`         -- Mean of FFT Body Gyroscope Magnitude
79. `fBodyBodyGyroMag-meanFreq()`     -- Weighted average of the frequency of FFT Body Gyroscope signal Magnitude
80. `fBodyBodyGyroJerkMag-mean()`     -- Mean of FFT Body Gyroscope Jerk Magnitude
81. `fBodyBodyGyroJerkMag-meanFreq()` -- Weighted average of the frequency of FFT Body Gyroscope Jerk Magnitude