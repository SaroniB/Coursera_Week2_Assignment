listoffiles <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
corr <- function(directory, threshold = 0){
  df <- complete()
  ids <- df[df["nobs"] > threshold, ]$id
  correl <- numeric()
  for (i in ids) {
    readfiles <- read.csv(listoffiles[i])
    df1 <- readfiles[complete.cases(readfiles), ] 
    correl <- c(correl, cor(df1$sulfate, df1$nitrate))
  }
  correl
}
