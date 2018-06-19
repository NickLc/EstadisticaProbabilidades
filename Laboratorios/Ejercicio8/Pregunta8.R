# Autor: Grupo4
# Respuesta8 : Se muestra la evaluación de argumentos en una función creada y
# el calculo de inversa de matriz mediante esta función.

invertir <- function(x,noinv=NA,nonmat="no es una matriz!",silent=TRUE) {
  if(class(x) == 'list')
    if(length(x) != 0){
    	if(class(nonmat) != 'character'){   
              as(nonmat,'character')
              print("nonmat debio ser de tipo 'character' por lo que se ha coercionado")
      	}
    	for(i in 1:length(x)){
        	if(class(x[[i]]) == 'matrix'){
	            if(class(try(solve(x[[i]]),silent)) == 'try-error') 
	            	x[[i]] = noinv
	            else x[[i]] = solve(x[[i]])
	        }
           	else x[i] = nonmat
        }      
    }
  	else print("No hay elementos en la lista x")
  
  else print("x no es una lista")
  print(x)
}

# Prueba 1:
invertir(list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)))
# Prueba 2:
invertir(list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)),noinv=Inf,nonmat=666)
# Prueba 3:
invertir(list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)),noinv=Inf,nonmat=666,silent=FALSE)
# Prueba 4:
invertir(list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),
              matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2))),noinv="matriz inadecuada")

# Prueba 5:
invertir("hola")
# Prueba 6:
invertir(list())

 solve(matrix(c(1,0,0,1),2,2))
