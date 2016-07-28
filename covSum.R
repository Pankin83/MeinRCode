#covSum Test Funktion
covSum <- function(x,z){
  
  D = dim(x)[2]
  
  v = c(1,1,2)
  
  nargin <- length(as.list(match.call()))-1 
  
  if(nargin == 1){
    logtheta <- c(1,1,2)
    s2 = exp(2*logtheta[3]) 
    covNoisenargin2 = s2*diag(dim(x)[2])

    loghypercovSEardinargin2 = logtheta[1:2]
    
    ell = exp(loghypercovSEardinargin2[1:D])
    sf2 = exp(2*loghypercovSEardinargin2[D+1]) 
    covSEardinargin2 = sf2*exp(-sq_dist(1/ell*t(Kx))/2)
    
    A =  covNoisenargin2 + covSEardinargin2
    return(A)
  }
  
   if(nargin == 2){
     
   K <<- end
    
   i = v[z]
   
   
   
   logtheta <- c(1,1,2)
   loghypernargin3 = logtheta[v==1]
   ell = exp(loghypernargin3[1:D])
   
   if(z == 1 && i == 1){
    K = exp(2*loghypernargin3[D+1])*exp(-sq_dist(1./exp(loghypernargin3[1:D])*t(x))/2)
    A = K*sq_dist(t(x[1,])/ell(1))
   }else if (z == 2 && i ==1){
     A = 2*K
     rm(K)
   }else if (z == 3 && i == 2){
   A = 2*exp(2*logtheta[v==2])*diag(dim(x)[1])
   }
     
    return(A)
    
  }
}

