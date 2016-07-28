#install.packages("pracma")
#library(pracma)


sq_dist <- function(x){

# print(x)

D = dim(x)[1]
n = dim(x)[2]
#print(n)
C = matrix(0,n,n)

for (d in 1:D){
  #print(d)
  #print(D)
#C = C + (repmat(b[d,1:300], n, 1) - repmat(t(a[d,1:300]), 1, m)).^2;
C = C + (repmat(t(x[,d]), n, 1) - t(repmat(t(x[,d]), n, 1)))^2 #repmat(t(a[,d]), 3, 1) - t(repmat(t(a[,d]), 3, 1))
#if(d%%10 == 0){
 # print((repmat(t(x[,d]), n, 1) - t(repmat(t(x[,d]), n, 1))))
  #print(d)
#}
}
return(C)
}
  