y<-read.csv(file="coursePacks.csv",header=TRUE)
install.packages(y$Package,dependencies = TRUE)
