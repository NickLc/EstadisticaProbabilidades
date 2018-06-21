
# Autor: Grupo 4

# Respuesta 2:
# Utilizamos la funcion "args" para ver que argumentos tiene una funcion, y asi 
# interpretar que que tipo de estilo de coincidencia de argumentos emplea
# para mayor informacion de los argumentos usar "help"

args(array)
array(8:1,dim=c(2,2,2)) #Exacta

help(rep)  
rep(1:2,3)   #Posicional 

help(seq) 
seq(from=10,to=8,length=5) #Parcial, el argumento length es lenght.out
 
help(sort)
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3)) #Exacto, pero en orden inverso

args(which)
args(matrix)
which(matrix(c(T,F,T,T),2,2))
# la funcion which es posicional
# la funcion matrix es posicional

which(matrix(c(T,F,T,T),2,2),a=T)
# la funcion which es mixta, es posicional para el argumento x
#     es parcial para el arguento arr.ind
# la funcion matrix es posicional para todos sus argumentos
