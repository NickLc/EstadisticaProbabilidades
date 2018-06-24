# Autor: Grupo 4
#Pregunta 5: Los codigos muestran el uso funciones

# Respuesta 4(a): Creacion de la funcion matematica factorial.
## definimos la funcion factorial
fun_fact<-function(minum){
## se inicializa el valor del factorial
fact=1
while(minum>0){
 ## se procede a realizar las multiplicaciones e ir decrementando el valor de "minum"   
  fact = fact * (minum)
  minum = minum - 1
   
    }
  return(fact)
}

#Comprobar el la función Factorial
minum = 0
fun_fact(minum)
minum = 1
fun_fact(minum)
minum = 5
fun_fact(minum)
minum = 12
fun_fact(minum)


# Respuesta 4(b): Completando el bucle While
## inicialización de variables 
unacadena <- "R fever"
## variable que determina la posición de un caracter en "unacadena"
index <- 1
## variable para contar las presencias de "e" o "E"
ecount <- 0
## vector resultado
resultado <- unacadena

## el primer elemento de "unacadena"
substring(unacadena,index,index)
## el bucle acaba al recorrer todo el array o si ecount>=5
while(ecount < 2 && index <= nchar(unacadena)){
  ## si encuentra "e" o "E" el contador aumenta
  if(substring(unacadena,index,index) == "e" || substring(unacadena,index,index)=="E"){
    ecount = ecount+1
  }
  if(ecount == 2){
    ## el vector resultado recibirá los caracteres de "unacadena" desde la posicion 1 hasta index-1	
    resultado = substring(unacadena,1,index-1)
  }
  ## index aumenta para ver el siguiente elemento de "unacadena"
  index = index+1
 }
  # mostrar el resultado
resultado


