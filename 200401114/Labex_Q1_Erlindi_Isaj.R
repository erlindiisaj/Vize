
#1.1
download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")


#1.2
maps <- read.csv(url("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"), header=TRUE , sep=";")


#1.3
maps$Latitude<-gsub("N","",as.character(maps$Latitude))



#1.4
idx <- which(grepl("W", maps$Longitude)==TRUE)
maps$Longitude<-gsub("E","",as.character(maps$Longitude))