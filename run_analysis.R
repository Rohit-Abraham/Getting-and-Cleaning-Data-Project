# Downloading and unzipping the data
src <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest <- "C:/Users/rohit/OneDrive/Documents/R/Getting and Cleaning Data/Getting-and-Cleaning-Data-Project"
download.file(src, dest, method = 'wb')
unzip("./data/Dataset.zip",exdir="./data")
unzip(zipfile = "Dataset.zip")

# Defining the path where the new folder has been unziped
pathdata = file.path("./data", "UCI HAR Dataset")
# Create a file which has the 28 file names
files = list.files(pathdata, recursive=T)
# Show the files
files

# 1. Output Steps - Here we begin how to create the data set of training and test

#Reading training tables - xtrain / ytrain, subject train
xtrain = read.table(file.path(pathdata, "train", "X_train.txt"),header = F)
ytrain = read.table(file.path(pathdata, "train", "y_train.txt"),header = F)
subject_train = read.table(file.path(pathdata, "train", "subject_train.txt"),header = F)

#Reading the testing tables
xtest = read.table(file.path(pathdata, "test", "X_test.txt"),header = F)
ytest = read.table(file.path(pathdata, "test", "y_test.txt"),header = F)
subject_test = read.table(file.path(pathdata, "test", "subject_test.txt"),header = F)

#Read the features data
features = read.table(file.path(pathdata, "features.txt"),header = F)

#Read activity labels data
activityLabels = read.table(file.path(pathdata, "activity_labels.txt"),header = F)

#2. Assigning variable names
colnames(x_train) <- features[,2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjectID"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"

colnames(activityLabels) <- c("activityID", "activityType")

# 1.3 Merging all datasets into one set
alltrain <- cbind(y_train, subject_train, x_train)
alltest <- cbind(y_test, subject_test, x_test)
finaldataset <- rbind(alltrain, alltest)

# 2. Extracting only the measurements on the mean and sd for each measurement

# Reading column names
colNames <- colnames(finaldataset)

# Create vector for defining ID, mean, and sd
mean_and_std <- (grepl("activityID", colNames) |
                   grepl("subjectID", colNames) |
                   grepl("mean..", colNames) |
                   grepl("std...", colNames)
)

# Making nessesary subset
setforMeanandStd <- finaldataset[ , mean_and_std == T]

# 3. Use descriptive activity names
setWithActivityNames <- merge(setforMeanandStd, activityLabels,
                              by = "activityID",
                              all.x = T)

# 4. Creating a second,  independent tidy data set with the avg of each variable for each activity and subject

# Making a second tidy data set
tidySet <- aggregate(. ~subjectID + activityID, setWithActivityNames[, 1:81], mean)
tidySet <- tidySet[order(tidySet$subjectID, tidySet$activityID), ]

# Giving appropriate labels the data set with descriptive variable names
names(tidyData)<-gsub("Acc", "Accelerometer", names(tidyData))
names(tidyData)<-gsub("Gyro", "Gyroscope", names(tidyData))
names(tidyData)<-gsub("BodyBody", "Body", names(tidyData))
names(tidyData)<-gsub("Mag", "Magnitude", names(tidyData))
names(tidyData)<-gsub("^t", "Time", names(tidyData))
names(tidyData)<-gsub("^f", "Frequency", names(tidyData))
names(tidyData)<-gsub("tBody", "TimeBody", names(tidyData))
names(tidyData)<-gsub("-mean()", "Mean", names(tidyData), ignore.case = T)
names(tidyData)<-gsub("-std()", "STD", names(tidyData), ignore.case = T)
names(tidyData)<-gsub("-freq()", "Frequency", names(tidyData), ignore.case = T)
names(tidyData)<-gsub("angle", "Angle", names(tidyData))
names(tidyData)<-gsub("gravity", "Gravity", names(tidyData))

# Writing second tidy data set into a txt file
write.table(tidySet, "tidyData.txt", row.names = F)