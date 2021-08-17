
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

comms_matrix <- data.frame(matrix(nrow = length(maine01[ , 10:59]), 
                         ncol = length(maine01$AOU)))
colnames(comms_matrix) <- unique(maine01$AOU)
head(comms_matrix)
# looks good, now for-loop to fill...



allstops_names <- colnames(maine01[10:59])
# creating names for reference within for loop. this lets the for loop be more flexible, or at least i think.
aou_names <- unique(maine$AOU)
# making vector of unique AOU names for reference in for loop.

for (i in 1:length(aou_names)) { 
  
  # does length(aout_names) need to be unique()? will eventually have to reckon with the fact that some communities might have repated AOU values... or should they? maybe they shouldn't if we take averages across years... because the repitition of AOU codes only comes with years right? check this and think about it. 
  
  a <- as.numeric(maine01[allstops_names][which(maine01$AOU == aou_names[i]), ])
  comms_matrix[, which(maine01$AOU == aou_names[i])] <- a
  
}

head(comms_matrix)
# it worked!

# check last row, another way to do it: 
table(as.numeric(maine01[which(maine01$AOU == aou_names[43]), allstops_names]) == comms_matrix[ , 43])

# as we can see, all values here are TRUE, so there's a perfect match between data from the 43rd value of aou_names in maine01 and in the comms_matrix. Any discrepancies would have resulted in a FALSE value.
