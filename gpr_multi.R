#path <- system.file('mat-files', package="R.matlab")
#pathname <- file.path(path, 'variables_IF_GP_saved_v3_minimize.mat')
#testdata <- readMat(pathname)
#list2env(testdata,envir = .GlobalEnv,as.list(.GlobalEnv))


gpr_multi <- function(logtheta,covfunc,x,y){
  
  logtheta <- logtheta0
  covfunc <- covfunc      #der Ordnung halber
  x <- z
  y <- Zwei.sQrtTEixdiag.sqrt.eig.Kx.sQrt.eig.Kx.Einswe
  
  
  
  
  #für function feval & size: install.packages("PopED"), library(PopED)
  #left the ischar() out
  tmp = size(x)
  n = tmp[1]
  D = tmp[2]
  
  tmp = size(y)
  n = tmp[1] #why two times n?
  m = tmp[2] 
  
  #überspringe erstmal ob input argumente ausreichen
  #if(eval(feval(covfunc[1,])))
  
  source("covSum.R")
  #feval(toString(covfunc2[[2]][[2]])) toString scheint nicht benötigt zu werden
  K = feval(cavfunc[[1]],cavfunc)
  
}
