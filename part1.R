pollutantmean <- function(directory, pollutant, id = 1:332) {
  data = numeric()
  for (i in id) {
    
    all_specdata_files = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    
    data = c(data, all_specdata_files[[pollutant]])
  }
  return(mean(data, na.rm = TRUE))
}

                
