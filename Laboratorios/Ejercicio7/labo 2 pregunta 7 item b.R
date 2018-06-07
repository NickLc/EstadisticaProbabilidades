##  VICTOR PONCE PINEDO ##

Jessica=3   ## valor obtenido por Jessica
Vilma=3     ## Valor obtenido por Vilma
cant=0      ## variable que contará los casos posibles
totales=6**3    ## cantidad de posibilidades al lanzar tres dados
for(i in 1:6){   ## triple bucle para buscar todas las posibilidades 
  for (j in 1:6) {
    for( z in 1:6){
      if(i+j+z>max(Jessica,Vilma))   ## aquí se verifica la validez de cada caso
        cant=cant+1  
      
    }
  }
}


probabilidad=paste(toString(cant),toString(totales),sep="/")
probabilidad