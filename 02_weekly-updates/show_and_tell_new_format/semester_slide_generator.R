library(lubridate)
rmd_stub <- "./02_weekly-updates/show_and_tell_new_format/template.Rmd"
contents <- readLines(rmd_stub)
# cat(contents, sep = "\n")

nextweekday <- function(date, wday) {
  date <- as.Date(date)
  diff <- wday - wday(date)
  if( diff < 0 )
    diff <- diff + 7
  return(date + diff)
}

write_rmd<- function(monday, contents, presenter, project){
  ## Set seed wtih the date
  set.seed(as.numeric(monday))
  
  ## Shuffle presenters
  # sample(presenter)
  
  # Uncomment the following line to shuffle presenters
  # presenter<- sample(presenter, size = length(presenter), replace = F)
  
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
  filename <- paste0("./02_weekly-updates/show_and_tell_new_format/",project,"/update-", monday, ".Rmd")
  cat(abc, sep = "\n", file = filename)
}

spring_end<- as.Date("2019-05-09")
summer_start<- as.Date("2019-05-20")
summer_end<- as.Date("2019-08-09")
fall_start<- as.Date("2019-08-26")
fall_end<- as.Date("2019-12-19")

semester_end<- spring_end # Specify the end date of the semester

snt<- list()
class(snt)<- "Date"
d<- Sys.Date()
i<- 1
monday <- nextweekday(d,2) 
while(monday<= semester_end){
  monday <- nextweekday(d,2) 
  snt[i]<- monday
  d<- d + 7
  i<- i + 1
}

snt<- unlist(snt)
class(snt)<- "Date"
snt<- snt[-length(snt)]



project_names<- basename(list.dirs(path = dirname(rmd_stub), recursive = F))
# project<- sample(project_names, size = length(project_names), replace = F)
project<- project_names[1]
num_months <- length(levels(factor(month(snt)))) # num of months in semester

date_p1<- list()
# class(date_p1)<- "Date"
date_p2<- list()
# class(date_p2)<- "Date"
date_p3<- list()
# class(date_p3)<- "Date"
date_p4<- list()
# class(date_p4)<- "Date"

ip1 = 1
ip2 = 1
ip3 = 1
ip4 = 1

for (nummonths in 1:num_months){
  p1<- which(month(snt) == levels(factor(month(snt)))[nummonths], arr.ind = T)[1] # 1 monday of each month
  date_p1[ip1]<- p1 #snt[p1]
  ip1<- ip1 + 1
  
  p2<- which(month(snt) == levels(factor(month(snt)))[nummonths], arr.ind = T)[2] # 1 monday of each month
  date_p2[ip2]<- p2 #snt[p2]
  ip2<- ip2 + 1
  
  p3<- which(month(snt) == levels(factor(month(snt)))[nummonths], arr.ind = T)[3] # 1 monday of each month
  date_p3[ip3]<- p3 #snt[p3]
  ip3<- ip3 + 1
  
  p4<- which(month(snt) == levels(factor(month(snt)))[nummonths], arr.ind = T)[4] # 1 monday of each month
  date_p4[ip4]<- p4 #snt[p4]
  ip4<- ip4 + 1
}


date_p1<- unlist(date_p1[!is.na(date_p1)])
date_p2<- unlist(date_p2[!is.na(date_p2)])
date_p3<- unlist(date_p3[!is.na(date_p3)])
date_p4<- unlist(date_p4[!is.na(date_p4)])


for(project in project_names){
  if(project == "Adminitistrative_Project_Updates"){
    presenter <-
      c("Alicia", "Stacy", "Sarah", "Marc", "Harlie", "LateBreak")
      for(datep1 in date_p1){
        write_rmd(snt[datep1], contents, presenter, project)
      }
  }else if(project == "Bullet_and_Casings"){
    presenter <-
      c("Ganesh", "Nate", "Kiegan", "Joe", "LateBreak")
    for(datep2 in date_p2){
      write_rmd(snt[datep2], contents, presenter, project)
    }
  }else if(project == "Handwriting_Foundations_HumanFactors"){
    presenter <-
      c("Amy", "Nick", "Nate", "Danica", "LateBreak")
    for(datep3 in date_p3){
      write_rmd(snt[datep3], contents, presenter, project)
    }
  }else if(project == "Glass_Shoes"){
    presenter <-
      c("Soyoung", "Sam", "Susan", "Miranda", "LateBreak")
    for(datep4 in date_p4){
      write_rmd(snt[datep4], contents, presenter, project)
    }
  }
}






