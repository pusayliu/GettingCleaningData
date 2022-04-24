X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
df <- rbind(cbind(y_train, subject_train, X_train),cbind(y_test, subject_test, X_test))
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")
colnames(df)[1:2] <- c('activity', 'subject')
colnames(df)[3:dim(df)[2]] <- features[,2]

meanstd <- colnames(df)[grep("[Mm]ean|std", colnames(df))]
df <- df[,c(colnames(df)[1:2],meanstd)]

for (i in 1:length(df$activity)){
  df$activity[i] = activity_labels[activity_labels$V1 == df$activity[i],]$V2
}

library(stringr)
for (i in 1:length(colnames(df))){
  if (!is.na(str_match(colnames(df)[i], "^t(.*?)-"))){
    colnames(df)[i] = substr(colnames(df)[i],2,nchar(colnames(df)[i]))
  } else if (!is.na(str_match(colnames(df)[i], "BodyBody"))){
    colnames(df)[i] = paste('f',substr(colnames(df)[i],6,nchar(colnames(df)[i])),sep='')
  }
}

df_group <- aggregate(x = df, by = list(df$activity, df$subject), FUN = "mean")
colnames(df_group)[1:2] = colnames(df_group)[3:4]
df_group <- df_group[-c(3:4)]
write.table(df_group,".\\HAR.txt", row.names = FALSE)
