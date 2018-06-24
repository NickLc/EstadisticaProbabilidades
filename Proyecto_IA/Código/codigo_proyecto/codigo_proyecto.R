install.packages('rgdal')
install.packages('rgeos')
library(rgdal)
library(rgeos)

mapa=readOGR(file.choose())
adyacencia=gIntersects(mapa,byid=TRUE)

adyacencia[which(adyacencia==TRUE)]=1
color <- rep(0,length(adyacencia[1,]))


correcto <- function(color, k) {
  if (k==1) return (TRUE)
  for(j in 1:(k-1)) {
    if(adyacencia[j,k]==1){  # comprueba que son adyacentes
      if(color[k]==color[j]) # comprueba que tienen el mismo color
        return(FALSE)
    }
  }
  return(TRUE)
}

k=1
while(k >= 1){
  color[k]=color[k]+1
  while(!correcto(color,k)){ # mientras la asignacion de color sea inadecuada.
    color[k]=color[k]+1
    if(color[k]>4) break
  }
  if (color[k] > 4) {
    k <- k-1
  }
  else {
    if (k == length(adyacencia[1,])) {
      break
    }
    else {
      k <- k + 1
      color[k] <- 0
    }
  }
}
color
plot(mapa,col=color)
