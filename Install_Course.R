y<-read.csv(file="coursePacks.csv",header=TRUE)
#install.packages(y$Package,dependencies = TRUE)

if(!require("devtools")) {install.packages("devtools");require("devtools")}
devtools::install_github("swirldev/swirl", ref = "dev",force=TRUE)
install_from_swirl("R_Programming", dev = FALSE, mirror = "github")
install_from_swirl("Data_Analysis", dev = FALSE, mirror = "github")
install_from_swirl("Exploratory_Data_Analysis", dev = FALSE, mirror = "github")
install_from_swirl("Regression_Models", dev = FALSE, mirror = "github")
install_from_swirl("Statistical_Inference", dev = FALSE, mirror = "github")

#insert homers plot addins

devtools::install_github("homerhanumat/addinplots",force = TRUE)
devtools::install_github("homerhanumat/shinyCustom")
devtools::install_github("homerhanumat/addinggplot2")


a = unlist(list(y$Package))

for (i in 1:length(a)){
  testPackage=as.character(a[i])
  if (!(testPackage %in% rownames(installed.packages())))
    install.packages(testPackage)
}

#let user decide to update or not...not needed on new install
#update.packages()







