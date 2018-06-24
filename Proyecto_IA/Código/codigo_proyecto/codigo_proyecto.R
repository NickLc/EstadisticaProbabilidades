## instalamos y activamos dos packages necesarios para graficar nuestros mapas
install.packages('rgdal')
install.packages('rgeos')
library(rgdal)
library(rgeos)

## aqui se escogerá el mapa que se quiere seleccionar
## nos pedirán seleccionar un archivo de formato shp
mapa=readOGR(file.choose())

## un mapa se puede representar como un grafo planar
## gIntersects nos devolverá la matriz de adyacencia del mapa
adyacencia=gIntersects(mapa,byid=TRUE)

## aqui simplemente hacemos que la matriz de adyacencia contenga valores numericos (0 o 1)
adyacencia[which(adyacencia==TRUE)]=1

## inicializamos la paleta de colores de nuestro mapa
color <- rep(0,length(adyacencia[1,]))

## esta funcion verificará el cumplimiento de la restriccion del PSR
## dos regiones adyacentes no pueden tener el mismo color
correcto <- function(color, k) {
  ## esto es al analizar solo la primera region
  if (k==1) return (TRUE)
  ## bucle para recorrer las regiones previas a la región k-ésima
  for(j in 1:(k-1)) {
    if(adyacencia[j,k]==1){  # comprueba que son adyacentes
      if(color[k]==color[j]) # comprueba que tienen el mismo color
        return(FALSE)
    }
  }
## al acabar el bucle significa que, de momento, se cumple la restriccion del PSR
## por ello retorna TRUE
  return(TRUE)
}

## variable para recorrer las regiones
k=1

while(k >= 1){
  ## se pinta la region k-esima
  color[k]=color[k]+1
  while(!correcto(color,k)){ # mientras la asignacion de color sea inadecuada.
    color[k]=color[k]+1
    if(color[k]>4) break   # aqui lo que se busca es pintar el mapa con menos de cuatro colores
  }
  if (color[k] > 4) {  ## si no se pudo con los primeros cuatro colores, se prueba otra solucion
    k <- k-1
  }
  else {
    if (k == length(adyacencia[1,])) {  ## aqui es cuando se encuentra una solucion, entonces el codigo acaba
      break
    }
    else {             ## caso contrario se pasa a la siguiente region   
      k <- k + 1
      color[k] <- 0
    }
  }
}
## visualizamos la paleta de colores
color
## graficamos el mapa pintado
plot(mapa,col=color)
