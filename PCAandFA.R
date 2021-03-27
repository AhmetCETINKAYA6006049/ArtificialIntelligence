data(mtcars)
View(mtcars)

#principal component analysis is computed by prcomp() function in R
mtcars.pca<-prcomp(mtcars[,c(1:7,10,11)],center=TRUE, scale.=TRUE)
summary(mtcars.pca)

#plotting the results of the PCA
install.packages("dplyr")
install.packages("Rtools40")
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)

ggbiplot(mtcars.pca)


#Factor Analysis
install.packages("psych")
install.packages("GPArotation")
library(psych)
library(GPArotation)

#parallel returns how many factors we need
parallel <- fa.parallel(bfi,fm="minres",fa='fa')

#print factors
factors <- fa(bfi,nfactors=7,rotate='oblimin',fm='minres')
print(factors)