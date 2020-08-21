listoffiles <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
values <- numeric()


pollutantmean <- function(directory, pollutant, id = 1:332){
  
  for (i in id) {
    readfiles <- read.csv(listoffiles[i])
    values <- c(values, readfiles[[pollutant]])
    #print(values)
  }
  mean(values, na.rm = TRUE)
}
pollutantmean("specdata/", "sulfate", 1:2)