#install.packages("R.matlab")
#library(R.matlab)
#path <- system.file('mat-files', package="R.matlab")

#pathname <- file.path(path, 'variables_IF_GP_saved.mat')
#testdata <- readMat(pathname)
#get("x", testdata)

list2env(testdata,envir = .GlobalEnv,as.list(.GlobalEnv)) #hier noch enviroment ändern -> Jonas fragen

#Kx
R_eigenX <- eigen((Kx+t(Kx))/2)          #compute values and corresponding vectores
eig_Kx <- head(R_eigenX$values,min(400, floor(T/4)))        #get the first N values
eix <- R_eigenX$vectors[1:length(R_eigen$vectors[,1]),1:min(400, floor(T/4))] #get the first N eigenvectors

#Ky
R_eigenY <- eigen((Ky+t(Ky))/2)          #compute values and corresponding vectores
eig_Ky <- head(R_eigenY$values,min(200, floor(T/5)))        #get the first N values
eiy <- R_eigenY$vectors[1:length(R_eigenY$vectors[,1]),1:min(200, floor(T/5))] #get the first N eigenvectors
#vektoren stimmen überein aber sind manchmal gespiegelt

#TODO next: ask what about the vectors also implememnt covfunc as cell