peru=readOGR(file.choose())
plot(peru)
adyacencia=gIntersects(peru,byid=TRUE)
adyacencia
adyacencia[which(adyacencia==TRUE)]=1
adyacencia

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
# K recorre las columnas de adya y de color.
k=1
while(k >= 1){
  print(k)
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
      print(color)
      break
    } 
    else {
      k <- k + 1
      color[k] <- 0
    }
  }
}

plot(peru)
plot(peru,col=color)
