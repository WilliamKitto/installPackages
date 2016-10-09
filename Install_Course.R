y<-read.csv(file="coursePacks.csv",header=TRUE)
install.packages(y$Package,dependencies = TRUE)

"xtable" %in% rownames(installed.packages())


a = unlist(list(y$Package))
a
str(a)
a[1]
a[100]
