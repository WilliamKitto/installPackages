y<-read.csv(file="coursePacks.csv",header=TRUE)
#install.packages(y$Package,dependencies = TRUE)

a = unlist(list(y$Package))

for (i in length(y[,1])){
  testPackage=as.character(a[i])
  if (!(testPackage %in% rownames(installed.packages())))
    install.packages(testPackage)
}

#let user decide to update or not...
update.packages()

