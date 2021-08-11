
# ----------------------- setup ---------------------

rm(list = ls())

library(ecolottery) 

maine <- read.csv('maine.csv')
# loading CSV with all maine data.

maine01 <- maine[maine$Route == 1,]
# extracting only route one



# ------------------- for loop -------------------
# goal here is to create LIST object in which each section of list[[i]] corresponds to a different community.
# then, i can lappy() coalesc_abc() function to each member of the list. 

stop_comms <- list()

for (i in 10:59) {
  temp <- vector()
  stops <- data.frame()
  (stops <- maine01[, c(9, i)])
  
  for (j in 1:length(stops$AOU)) {
    (a <- rep(stops$AOU[j], stops[j, 2]))
    (temp <- c(temp, a))
  }
  for (k in 1:50){
    stop_comms[[k]] <- data.frame(number = 1:length(temp), species = temp)}
}

str(stop_comms)
# repeats last community of data; pretty sure this is because of my last for loop.
(stops <- maine01[, c(9, 59)])

############################

# seems like: 
# can't put output of for loop directly in data.frame; it's too complicated. you need to pre-define the number of columns // rows which makes it super complicated. or, do this way?

(stops <- maine01[, c(9, 10)])

temp <- vector()
stop_comms <- list()

for (i in 1:length(stops$AOU)) {
  (a <- rep(stops$AOU[i], stops[i, 2])) # j goes from 1:length of AOU codes 
  (temp <- c(temp, a))
  number <- 1:length(temp)
  
  for (j in 1:50) {
    stop_comms[[j]] <- cbind(number, temp)
    stop_comms[[j]] <- data.frame(stop_comms[[1]])
}
}

str(stop_comms)

# not working for now.





# ------------------------ matrix -------------------
# alternative option, maybe easier? 
# setup matrix so that each community is a LINE in the matrix, then i can use apply() on each ROW (community) of the database. this is what they do in ecolottery PDF.

head(maine01)
library(vegan)

# want it to look like the BCI data here:
data(BCI)

new <- data.frame(matrix(nrow = length(maine01[ , 10:59]), 
                         ncol = length(maine01$AOU)))
colnames(new) <- unique(maine01$AOU)
head(new)
# looks good, now for-loop to fill...


