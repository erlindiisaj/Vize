
#1.1
download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")


#1.2
maps <- read.csv(url("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"), header=TRUE , sep=";")


#1.3
maps$Latitude<-gsub("N","",as.character(maps$Latitude))



#1.4
idx <- which(grepl("W", maps$Longitude)==TRUE)
maps$Longitude<-gsub("E","",as.character(maps$Longitude))


#1.5
maps$Longitude<-gsub("W","",as.character(maps$Longitude))


#1.6
maps$Year<-gsub("AD", "", as.character(maps$Year))
maps$Year<- as.numeric(maps$Year)


#1.7
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)