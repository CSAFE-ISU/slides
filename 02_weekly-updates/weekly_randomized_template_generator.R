library(lubridate)
rmd_stub <- "./02_weekly-updates/template-spring-2019.Rmd"
contents <- readLines(rmd_stub)
# cat(contents, sep = "\n")

nextweekday <- function(date, wday) {
  date <- as.Date(date)
  diff <- wday - wday(date)
  if( diff < 0 )
    diff <- diff + 7
  return(date + diff)
}
monday <- nextweekday(Sys.Date(),2) 
presenter <- 
  c("Soyoung", "Amy", "Nick", 
    "Ganesh", "Nate", "Sam",
    "Kiegan", "Danica", "Susan", 
    "Miranda")

## Set seed wtih the date
set.seed(as.numeric(monday))

## Shuffle presenters
# sample(presenter)
presenter<- sample(presenter, size = length(presenter), replace = F)

contents[2]<- paste0("title: ","\"","Weekly Update for ",month(monday, label = T)," ", day(monday),"\"")
contents[3]<- paste0("date: ", "\"", monday, "\"")

abc<- list()
abc[[1]]<- contents[1:(which(contents== "class: inverse")[3]-1)]
for(k in 1: length(presenter)){
  for(i in 3:length(which(contents== "class: inverse"))){
    ifelse(contents[(which(contents== "class: inverse")[i]+1)]== paste0("# ",presenter[k]),
           abc[[k+1]]<- contents[(which(contents== "class: inverse")[i]):(which(contents== "class: inverse")[i+1]-1)],
           next
    )
  } 
  
}
abc[[length(which(contents== "class: inverse"))]]<- contents[(which(contents== "class: inverse")[length(which(contents== "class: inverse"))]):length(contents)]
abc<- unlist(abc)

# filename 
filename <- paste0("./02_weekly-updates/update-", monday, ".Rmd")
cat(abc, sep = "\n", file = filename)




