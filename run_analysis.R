  ## Merge the training and the test sets to create one data set.
  X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

  X_data <- rbind(X_train, X_test)
  y_data <- rbind(y_train, y_test)
  subject_data <- rbind(subject_train, subject_test)

  ## Extract only the measurements on the mean and standard deviation for each measurement. 
  all_features <- read.table("./UCI HAR Dataset/features.txt")
  selected_features <- grep("(mean|std)\\(\\)", all_features[, 2])

  # Extract the data and set the column names ...
  X_extract <- X_data[, selected_features]
  names(X_extract) <- features[selected_features, 2]

  # Clean up the column names ...
  names(X_extract) <- gsub("^t", "Time", names(X_extract))
  names(X_extract) <- gsub("^f", "Freq", names(X_extract))
  names(X_extract) <- gsub("-mean\\(\\)", "Mean", names(X_extract)) 
  names(X_extract) <- gsub("-std\\(\\)", "StdDev", names(X_extract)) 
  names(X_extract) <- gsub("-", "", names(X_extract))
  names(X_extract) <- gsub("BodyBody", "Body", names(X_extract))


  ## Use descriptive activity names to name the activities in the data set
  activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt") 
  
  # Clean up the activity names ...
  activity_names[, 2] <- tolower(gsub("_", "", activity_names[, 2])) 
  substr(activity_names[2, 2], 8, 8) <- toupper(substr(activity_names[2, 2], 8, 8)) 
  substr(activity_names[3, 2], 8, 8) <- toupper(substr(activity_names[3, 2], 8, 8)) 

  y_data[, 1] <- activity_names[y_data[, 1], 2]
  names(y_data) <- "Activity" 

  ## Appropriately label the data set with descriptive variable names. 
  names(subject_data) <- "Subject" 
  all_data <- cbind(X_extract, y_data, subject_data) 

  ## From the data set in step 4, creates a second, independent tidy data set
  ## with the average of each variable for each activity and each subject.
  library(plyr)
  averages_data <- ddply(all_data, .(Subject, Activity), function(x) colMeans(x[, 1:66])) 
  write.table(averages_data, "averages_data.txt", row.name=FALSE) 

