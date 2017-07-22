archtool <- function(data, wrtcsv = FALSE) {

for (i in 1:nrow(data)) {
  
  if (grepl("GR", data[i, 1])) {
    data[i, "color"] <- "gruen"
  }
 
  if (grepl("RO", data[i, 1])) {
    data[i, "color"] <- "rot"
  }
  
  if (grepl("WE", data[i, 1])) {
    data[i, "color"] <- "weiss"
  }
  
  if (grepl("BL", data[i, 1])) {
    data[i, "color"] <- "blau"
  }
  
  if (grepl("GE", data[i, 1])) {
    data[i, "color"] <- "gelb"
  }
  
}
  if (wrtcsv == FALSE)
  {as.data.frame(data)}
  else
  {write.csv(data, "data.csv")}
}