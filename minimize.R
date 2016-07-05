#input args:
#X -> starting point
#f -> function name by string
#length -> length of the run(number of line searches or function evaluations)
#varargin -> parameters that are passed to function f


#-----import parameters for minimize fkt- truncated from the extracted fkt
#path <- system.file('mat-files', package="R.matlab")
#pathname <- file.path(path, 'variables_IF_GP_saved_v3_minimize.mat')
#testdata <- readMat(pathname)


#für function feval: install.packages("PopED"), library(PopED)

# ich lasse varargin weg da es kompliziert ist diese mathlab fkt zu ersetzen. 
# gefundene optionen unter (http://www.r-bloggers.com/a-new-r-trick-for-me-at-least/)

minimize <- function(X, f, length, ...){

#hope this works

varargin = list(...)

INT <- 0.1
EXT <- 3.0
MAX <- 20
RATIO <- 10
SIG <- 0.1
RHO <- SIG/2

if(max(size(length)) == 2){
  red <- length[2]
  length <- length[1]}
else{
  red <- 1
}
if(length > 2){
  S='Linesearch'
}else{
  s='Function evaluation'
}

i = 0                                            #zero the run length counter
ls_failed = 0                             #no previous line search has failed
list[f0,df0] = feval(f, X, varargin)          # get function value and gradient
fX = f0
i = i + (length<0);                                            # count epochs?!
s = -df0
d0 = t(-s)*s;                 #initial search direction (steepest) and slope
x3 = red/(1-d0) 

return(f0)
}

