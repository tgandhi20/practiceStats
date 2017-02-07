library(data.table)

college<-data.table(read.csv("data/College.csv",stringsAsFactors = F))
college[,X:=NULL]

college[,Elite:=ifelse(Top10perc>50,1,0)]
