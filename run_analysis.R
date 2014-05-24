#Read entire data sets
activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt", sep = ' ')
features<-read.table("UCI HAR Dataset/features.txt", sep = ' ')
yTrain<-read.table("UCI HAR Dataset/train/y_train.txt", sep = ' ')
subjectTrain<-read.table("UCI HAR Dataset/train/subject_train.txt", sep = ' ')
xTrain<-read.table("UCI HAR Dataset/train/X_train.txt")
yTest<-read.table("UCI HAR Dataset/test/y_test.txt", sep = ' ')
subjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt", sep = ' ')
xTest<-read.table("UCI HAR Dataset/test/X_test.txt")

#Extract only the measurements on the mean and standard deviation for each measurement
testData<-xTest[, sort(c(grep("mean",features[,2]), grep("std",features[,2])))]
trainData<-xTrain[, sort(c(grep("mean",features[,2]), grep("std",features[,2])))]
namesVector<-as.character(features[sort(c(grep("mean",features[,2]), grep("std",features[,2]))), 2])

#Add subject Id and activity id
testData<-cbind(subjectTest, yTest, testData)
trainData<-cbind(subjectTrain, yTrain, trainData)

#Name columns
names(testData)<-c("Subject.id", "Activity", namesVector)
names(trainData)<-c("Subject.id", "Activity", namesVector)

#Merge the training and the test sets to create one data set and sort it by Sybject Id
data<-rbind(testData, trainData)
data<-data[order(data$Subject.id),]

#Name the activities in the data set with descriptive names
activityVector<-activityLabels[data[,2],2]
data[, 2]<-activityVector

#Compute averages
averageData<-aggregate(data[, 3:81], list(data$Subject.id, data$Activity), mean)
names(averageData)[1:2]<-c("Subject.id", "Activity")
averageData<-averageData[order(averageData$Subject.id),]
rownames(averageData)<-NULL

#Save results to txt file
write.table(averageData, "result.txt", sep = "\t")
