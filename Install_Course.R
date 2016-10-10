y<-read.csv(file="coursePacks.csv",header=TRUE)
#install.packages(y$Package,dependencies = TRUE)

a = unlist(list(y$Package))
b=as.character(a[1])

for (i in length(y)){
  testPackage=as.character(a[i])
  if (!(testPackage %in% rownames(installed.packages())))
    install.packages(testPackage)
}