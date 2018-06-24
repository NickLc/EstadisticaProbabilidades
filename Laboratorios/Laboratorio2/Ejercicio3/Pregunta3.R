# Autor: Grupo 4
# Respuesta 3: El código muestra el uso del operador condicional if

## Respuesta3(a): 
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)


## si mandará el mensaje, ya que vec1[1]+vec2[2]=2+8=10
 if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado!") }

## si mandará el mensaje, ya que vec1[1]=2>=2 y vec2[1]=3>=2 
if(vec1[1]>=2&&vec2[1]>=2){ cat("Imprime el resultado!") }  

## no mandará el mensaje ya que los elementos de (vec2-vec1)[c(2,6)] 
## son 7,1,-1,-2,-1 y no todos son+menores a 7 
if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado!") } 

## si mandará el mensaje ya que is.na(vec2[3]) es FALSE debido a 
## que vec2[3] no es NA y el IF devolver?a TRUE 
if(!is.na(vec2[3])){ cat("Imprime el resultado!") } 

## Respuesta 3(b): El código muestra el uso del bucle for y el condicional if

#Verificar que se tiene los mismos vectores que el ítem (a)
## Visualizamos ambos vectores
vec1
vec2

## Inicializamos el vector que contendrá el resultado
vec_result=NULL

## Bucle for para recorrer los vectores
for(i in 1:length(vec1) ){

## si la suma es >3, en el vector resultado se almacena la multiplicacion
  if(vec1[i] + vec2[i] > 3){ 
   	vec_result = c(vec_result , vec1[i] * vec2[i])
   }
## si la suma es <=3, en el vector resultado se almacena la suma
  else{
    vec_result = c(vec_result,vec1[i] + vec2[i])
	}
}
# Impriminos el resultados
vec_result


## Respuesta 3(c): El código muestra el uso de las funciones

# Creaci?n de la función modificador
modificador <- function(string){

## inicializamos un contador  
  c=1
## bucle for para recorrer los elementos de la diagonal de la matriz "string"
  for(i in diag(string)){
## si el caracter de la cadena analizada es 'G' o 'g', el elemento de la matriz "string" se reemplazará por la cadena "AQUÍ"	   
    if(substring(i,1,1)=="G" || substring(i,1,1)=="g")
    {
    	diag(string)[c]="AQUÍ" 
    }
    c=c+1
  }
  #Retornamos string 
  string
}

# Aplicando la función modificador
## Si inicializará mymat con diferentes valores,se visualizará y se le apliicará la función modificador
mymat <- matrix(as.character(1:16),4,4)
mymat

modificador(mymat)


mymat <- matrix(c("DANDELION","Hyacinthus","Gerbera","MARIGOLD","geranium",
					"ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
mymat
modificador(mymat)


mymat <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,byrow=T)                
mymat
modificador(mymat)

