# Autor: Grupo 4

#Pregunta 4: Los codigos muestran el uso de los bucles
loopvec1 <- 5:7
loopvec2 <- 9:6

## inicializamos y visualizamos la matriz
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1



# Respuesta 4(a): Reescribimos el bucle for.

## inicializamos la matriz resultante
mat_result=matrix(NA,length(loopvec1),length(loopvec2))

for(i in 1:length(loopvec1)){
  ## aqui almacenamos en la fila i de mat _result cada multiplicacion
  ## del elemento i-esimo de loopvec1 con cada elemento de loopvec2  
  mat_result[i,]=loopvec1[i]*loopvec2
  
}
## visualizamos el resultado
mat_result




# Respuesta 4(b): El codigo toma un vector de caracter y devuelve un vector numerico
## inicializamos la cadena
cadenas=c("Peter","Homer","Lois","Stewie","Maggie","Bart")
## inicializamos el vector resultante
vector_resultado=NULL
## bucle para recorrer la cadena
for(j in 1:6){
## el switch verificar? si los elementos de "cadenas" coinciden con Homer,Marge,Bart y Lisa
## si hay coincidencia se concatena el valor numerico dado en el switch, en el vector resultado
## si no hay coincidencia, se concatenar? el valor NA 
vector_resultado=c(vector_resultado,switch(EXPR=cadenas[j],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA))
}
# mostramos el resultado del codigo
vector_resultado



# Respuesta 4(c): El uso de bucle for con un contador
## inicializamos la lista
unalista <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),cc=matrix(c(T,T,F,T,F,F),3,2),
                 dd="cadena aqui",ee=list(c("hola","tu"),matrix(c("hola","there"))),
                 ff=matrix(c("red","green","blue","yellow")))
## esta funcion contar? las matrices en una lista
contar_matrices_en_lista<-function(lista){
## inicializar contador  
contar=0
  for(i in lista){
    ## si hay una lista dentro de la lista, entonces contara matrices en dicha lista anidada 
    ##	y esa cantidad se le agregar? al contador
	if(class(i)=="list"){
      
      contar=contar+contar_matrices_en_lista(i)
    }
## si encuentra una matriz, el contador aumenta
    if(class(i)=="matrix"){contar=contar+1}
    
  }
## devuelve la cantidad de matrices    
return(contar)

  }


contar_matrices_en_lista(unalista)

unalista <- list("salio algo raro", as.vector(matrix(1:6,3,2)))
contar_matrices_en_lista(unalista)

unalista <- list(list(1,2,3), list(c(3,2),2),list(c(1,2),matrix(c(1,2))),
                                                  rbind(1:10,100:91))
contar_matrices_en_lista(unalista)

#fin del script
