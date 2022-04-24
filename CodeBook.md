The data transformation and cleaning steps in run_analysis.R are described as below:
1. Read in the neaded data sets
2. Using cbind and rbind, merge all the tables into one table called 'df'.
3. Map the features names in features.txt to the column name.
4. Extract columns that contain the mean and std measurements.
5. Map the descriptive activity names in activity_labels.txt to activity column.
6. Cleaning column names:
   (1) Removing the starting 't'.
   (2) Removing the duplicated words 'Body'
7. Group the data set by columnes of activity and subject, and calculate the mean in each group.
8. Export the csv file.



