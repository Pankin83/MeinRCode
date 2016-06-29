#install.packages("R.matlab")
#library(R.matlab)
#path <- system.file('mat-files', package="R.matlab")

#pathname <- file.path(path, 'variables_IF_GP_saved_v2.mat')
#testdata <- readMat(pathname)
#get("x", testdata)

#list2env(testdata,envir = .GlobalEnv,as.list(.GlobalEnv)) #hier noch enviroment ändern -> Jonas fragen

#Kx
R_eigenX <- eigen((Kx+t(Kx))/2)          #compute values and corresponding vectores
eig_Kx <- head(R_eigenX$values,min(400, floor(T/4)))        #get the first N values
eix <- R_eigenX$vectors[1:length(R_eigen$vectors[,1]),1:min(400, floor(T/4))] #get the first N eigenvectors

#Ky
R_eigenY <- eigen((Ky+t(Ky))/2)          #compute values and corresponding vectores
eig_Ky <- head(R_eigenY$values,min(200, floor(T/5)))        #get the first N values
eiy <- R_eigenY$vectors[1:length(R_eigenY$vectors[,1]),1:min(200, floor(T/5))] #get the first N eigenvectors
#vektoren sind manchmal gespiegelt

#covfunc als list in list
covfunc <- list('covsum',list('covSEard','covNoise')) #in Matlab als cell gespeichert

logtheta0 = matrix(c(log(width) * matrix(1,D,1), 0, log(sqrt(0.1))),ncol = 1)


#here should be the olg gpml box







#rest of the code...


#P1_x = (eye(T) - Kz_x*pdinv(Kz_x + exp(2*logtheta_x(end))*eye(T)));
P1_x <- (diag(1,T) - Kz.x %*% solve(Kz.x + exp(2*logtheta.x[length(logtheta.x)])*diag(1,T)))
Kxz <- P1_x %*% Kx %*% t(P1_x)
P1_y <- (diag(1,T) - Kz.y %*% solve(Kz.y + exp(2*logtheta.y[length(logtheta.y)])*diag(1,T)));
Kyz <- P1_y %*% Ky %*% t(P1_y)

## calculate the statistic
Sta <- sum(diag((Kxz %*% Kyz)))

## degrees of freedom
df_x <- sum(diag(diag(1,T) - P1_x))
df_y <- sum(diag(diag(1,T) - P1_y))

          




