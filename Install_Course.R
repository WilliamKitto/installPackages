y<-read.csv(file="coursePacks.csv",header=TRUE)
#install.packages(y$Package,dependencies = TRUE)

a = unlist(list(y$Package))

for (i in 1:length(a)){
  testPackage=as.character(a[i])
  if (!(testPackage %in% rownames(installed.packages())))
    install.packages(testPackage)
}

#let user decide to update or not...
update.packages()

#insert homers plot addins

if(!require("devtools")) {install.packages("devtools");require("devtools")}

devtools::install_github("homerhanumat/addinplots")
devtools::install_github("homerhanumat/shinyCustom")
devtools::install_github("homerhanumat/addinggplot2")

