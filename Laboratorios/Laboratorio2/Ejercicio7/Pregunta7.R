# Autor: Grupo 4

# Pregunta 7 : Se muestra el calculo de probabilidades,y el ingreso de datos 
# mediante la funcion read.table().

 mcd<-function(a,b) {
   if(b)
   return(mcd(b,a %% b)) 
   else return(a)
 }

# Respuesta 7(a)
 
# Leemos las dos cadenas de entrada,que estan alojadas en el archivo "datos1.txt":
# Asumiremos que estamos trabajando en alguna distribuciÃ³n de Linux

# Utilizamos la función "choose" y seleccionemos el archivo datos1.txt
rutz <- scan(file.choose(), what = character())
rutz <- as.data.frame(rutz)
x <- rutz
print(x)
#x<-read.table(rutz)

# Extraemos las dos cadenas y las asignamos como vectores de caracteres en Info y A:
Info<-noquote(strsplit(as.character(x[1,]),NULL)[[1]])
A <- noquote(strsplit(as.character(x[2,]),NULL)[[1]])

# Comparamos el numero de "+" en Info y A,hallando el numero de "+" faltantes, en A:
faltan=sum(Info=="+")-sum(A=="+")

# Numero de elementos dudosos en A:
dudas=sum(A=="?")

# Si hay elementos dudosos,caculamos la probabilidad como sigue:
if(dudas>0){
        probabilidad=choose(dudas,faltan)/(2^dudas)  # Casos favorables/Casos totales
        
# Si no hay elementos dudosos,la probabilidad es 1 si las cadenas son iguales o permutadas,
# es decir "faltan=0",finalmente la probabilidad sera 0 si las cadenas son totalmente diferentes,es decir "faltan!=0".
}else if(faltan==0){
            probabilidad=1.0
      }else probabilidad=0.0

# Se muestra la probabilidad de que A coincida con Info o una sea permutacion de la otra,resultado dado con 9 decimales:
sprintf("%.9f",probabilidad)




# Respuesta 7(b)

# Leemos los valores que sacaron Vilma y Esther, que se encuentran en el archivo datos2.txt:
# Selecciona el archivo datos2.txt
rutz <- scan(file.choose(), what = character())
rutz <- as.numeric(rutz)
y <- rutz
print(y)
# Extraemos el numero maximo de los dos resultados:
maximo=max(y)
# Contaremos los casos desfavorables en los que Jessica no gana:
casos=0
for(i in 1:6){
  for(j in 1:6){
    for(k in 1:6){
              if(i+j+k<maximo)casos=casos+1
    }
  }
}
#Entonces los casos faborables,son los conplementarios:
favorables = 216-casos
#Mostramos la probabilidad de que Jessica gane,expresandolo en una fraccion irreductible:
sprintf("%i/%i",favorables/mcd(favorables,216),216/mcd(favorables,216))

#fin del script

