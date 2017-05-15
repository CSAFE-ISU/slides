library(dplyr)
library(bulletr) # from github erichare/bulletr
library(RMySQL)
library(ggplot2)

###
### DB Connection
###
dbname <- "bullets"
user <- "buser"
password <- readLines("buser_pass.txt")
host <- "127.0.0.1"

con <- src_mysql(dbname, host, user=user, password=password)

signatures <- tbl(con, "signatures")

signatures %>% filter(profile_id==49) %>% collect() %>%
  ggplot(aes(x = y, y = resid)) + geom_point(aes(colour=factor(run_id)), size=0.5)

data <- con %>% tbl("data")
data %>% filter(land_id == 3, between(x, 240,250)) %>% collect() %>%
  ggplot(aes(x = y, y = value)) + geom_point(size=.1)
