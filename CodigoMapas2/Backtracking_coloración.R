library(rgdal)
library(rgeos)
mapa<-readORG(file.choose())       #Buscamos archivo del mapa en formato SHP.
adyacencia <- gIntersects(mapa, byid=TRUE) # Extraemos la matriz de adyacencia del mapa.

color <- rep(0,length(mapa))

correcto <- function(color, k) {
  if (k==1) return (TRUE)
  for(j in 1:(k-1)) {
    if(adyacencia[j,k]==TRUE){  # comprueba que son adyacentes
      if(color[k]==color[j]) # comprueba que tienen el mismo color
        return(FALSE)
    }
  }
  return(TRUE)
  
}


k=1
while(k<=length(mapa)){
  if(color[k]==0) color[k]=1
  if(correcto(color,k)) k=k+1
  else{
    color[k]=color[k]+1
    if(color[k]>4){
      repeat{
        k=k-1
        color[k+1]=0
        if(color[k]!=4){
          break
        }
      }
    color[k]=color[k]+1
    }
    
  }
  
}

plot(mapa,col=color)