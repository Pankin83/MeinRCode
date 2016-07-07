#covSum Test Funktion
covSum <- function(covfunc){
  return(feval(covfunc[[2]][[2]],2) + feval(covfunc[[2]][[1]],2))
  
  
  
}