listoffiles <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)

complete <- function(directory, id = 1:332){
  nobs <- numeric()
 for (i in id) {
   readfiles <- read.csv(listoffiles[i])
   nobs <- c(nobs, sum(complete.cases(readfiles)))
 }
    df <- data.frame(id, nobs)
    df
}
