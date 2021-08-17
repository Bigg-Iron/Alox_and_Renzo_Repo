# Install necessary packages 
install.packages('ecolottery')
install.packages('tidyverse')
install.packages('parallel')
install.packages('vegan')
install.packages('tidyr')

# ------------------ setup ---------------------------------

rm(list = ls())

# FIXME: You want to use environment variables for your file path so that other people can run the code 
# setwd('~/academics/gradschool/CSULB/thesis/idea02_gradients/scripts')

# Load packages
library(ecolottery) # obviouslyl
library(tidyverse) # for data manipulation help
library(parallel) # for using multiple cores for faster analysis
library(vegan) # just to reference BCI data
library(tidyr) # Wanted to see if this package would work...


maine <- read.csv('maine.csv')
maine01 <- maine[maine$Route == 1,]



# --------------------- building route 01 pool ------------------------

route01_pool <- vector() # empty vector to fill with results of loop

for (i in 1:length(maine01$AOU)){
  a <- rep(maine01$AOU[i], maine01$route_totals[i])
  # repeat AOU codes by the number of times they occur in route total column.
  route01_pool <- c(route01_pool, a)
  # add repeated AOU codes to empty vector
}

# taking for loop output and and re-assigning to data frame with numbered columns and species AOU data
route01_pool <- data.frame(label = 1:length(route01_pool), species = route01_pool)
head(route01_pool, n = 50)



# ------------------ building local community matrix ----------------

# matrix setup
comms_matrix <- data.frame(matrix(nrow = length(maine01[ , 10:59]), 
                                  ncol = length(maine01$AOU)))
colnames(comms_matrix) <- unique(maine01$AOU)
# checking output
head(comms_matrix)


# building vectors to reference in for loop
allstops_names <- colnames(maine01[10:59])
aou_names <- unique(maine$AOU)

# filling community matrix
for (i in 1:length(aou_names)) { 
  a <- as.numeric(maine01[allstops_names][which(maine01$AOU == aou_names[i]), ])
  comms_matrix[, which(maine01$AOU == aou_names[i])] <- a
}



# ----------------- setting values for coalesc_abc() ------------------

f.sumstats <- function(com) array(dimnames=list(c("cwm", "cwv", "cws",
                                                  "cwk", "S", "Es")), 
                                  c(mean(com[,2]), var(com[,2]), 
                                    e1071::skewness(com[,2]), 
                                    e1071::kurtosis(com[,2]),
                                    vegan::specnumber(table(com[,2])), 
                                    vegan::diversity(table(com[,2]))))









# -------------------- running coalesc_abc() --------------------------

system.time(test <- coalesc_abc(comm.obs = comms_matrix, # observed comm data
                                multi = 'tab', # because i'm providing site-species 
                                # matrix. rows = communities, col = AOU codes.
                                pool = route01_pool,
                                traits = NULL, 
                                f.sumstats = f.sumstats, 
                                tol = 0.01, 
                                parallel = TRUE))


