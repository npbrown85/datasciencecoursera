complete <- function(directory,id = 1:332) { 
  final = numeric()
  for (i in id) { 
    all_specdata_files = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                                        ".csv", sep = ""))
   obs = sum(is.na(all_specdata_files["sulfate","nitrate"]== FALSE))
   id = i
   final = data.frame(obs,id)
  
}
 return(final)
}

