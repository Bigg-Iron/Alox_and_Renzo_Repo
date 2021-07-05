rm(list = ls())

maine <- read.csv('maine.csv')
maine_pool <- read.csv('maine-pool.csv')
J_maine01 <- 513



m_samp <- runif(100, min = 0, max = 1) 


sim <- vector()
# vector for simulations
for (i in 1:length(m_samp)){
  coal <- ecolottery::coalesc(J = J_maine01, m = m_samp[i], pool = maine_pool)
  sim <- c(sim, coal)
}

# this doesn't work; communities are the same!
coal1 <- ecolottery::coalesc(J = J_maine01, m = m_samp[1], pool = maine_pool)
coal2 <- ecolottery::coalesc(J = J_maine01, m = m_samp[2], pool = maine_pool)
coal3 <- ecolottery::coalesc(J = J_maine01, m = m_samp[3], pool = maine_pool)
coal4 <- ecolottery::coalesc(J = J_maine01, m = m_samp[4], pool = maine_pool)



new <- rbind(coal1, coal2, coal3, coal4)

new <- c(coal1, coal2, coal3, coal4)
