pollutantmean <- function(directory, pollutant, id = 1:332) {
  #### Creat an empty numeric vectory that we will fill in later ####
  data = numeric()
  #### make a loop for the "i" or unknown value ####
  for (i in id) {
    #### read in the .csv file is use the '"paste()" function so that your direcotry argument can be inputed into the path####
    #### the paste fuction works like this  paste("A", "/", "B")  ####  
    all_specdata_files = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    #### combind your numeric data vector to  to the all_specdata_files that will index the colom as per your "pollutant" argument.####
    data = c(data, all_specdata_files[[pollutant]])
  }
  #### use the return function to calculate the mean of your "data" use na.rm set to TRUE to ingnore all na values####
  return(mean(data, na.rm = TRUE))
}

                
