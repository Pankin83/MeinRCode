#covSum Test Funktion
covSum <- function(covfunc,z){
  
  
  D = dim(x)[2]
  
  v = c(1,1,2)
  
  nargin <- length(as.list(match.call())) -1 
  
  if(nargin == 2){
    
    logtheta <- c(1,1,2)
    s2 = exp(2*logtheta[3]) 
    covNoisenargin2 = s2*diag(dim(x)[2])

    loghypercovSEardinargin2 = logtheta[1:2]
    
    ell = exp(loghypercovSEardinargin2[1:D])
    sf2 = exp(2*loghypercovSEardinargin2[D+1]) 
    covSEardinargin2 = sf2*exp(-sq_dist(1/ell*t(x))/2)
    
    A =  covNoisenargin2 + covSEardinargin2; 
    
  }
  
  if(nargin == 3){
      f <- local({ x<-NULL; function(y) {
    if (is.null(x)) { # or perhaps !missing(y)
      x <<- y+1
    }
  }})
  
  f(4)
  
  
  logtheta <- c(1,1,2)
  loghypernargin3 = logtheta[v==1]
  ell = exp(loghypernargin3(1:D))
  
  if(z == 1 && i == 1){
    K = exp(2*loghyper(D+1))*exp(-sq_dist(diag(1./exp(loghyper(1:D)))*x')/2);
  }
    
    
    
  }
  

  
}

