# Autor: Grupo 4
# Respuesta6 : Se muestra el uso de ciclos implicitos con funciones de la familia apply. 

# Solucion item a)

# Sea nuestra lista:
matlist <- list(matrix(c(T,F,T,T),2,2),
                matrix(c("a","c","b","z","p","q"),3,2),
                matrix(1:8,2,4))

# Luego el ciclo dado en el ejercicio es el siguiente:
#
# for(i in 1:length(matlist)){
#  matlist[[i]] <- t(matlist[[i]])
# }
# matlist
# Es decir,se remplaza cada elemento de la lista(matrices) por su traspuesta correspondiente.
# Para luego devolver la lista modificada.

# Por lo tanto debemos buscar una funcion de la familia apply que reciba una lista 
# y devuelva una lista, tal funcion es "lapply()",solo bastara poner a matlist en el primer
# argumento y a la funcion "t()" que transpone matrices,finalmente:
matlist<-lapply(matlist,t)
matlist

# Solucion item b)

qux <- array(96:1,dim=c(4,4,2,3))  # Almacenando
matrix(c(diag(qux[,,2,1]),diag(qux[,,2,2]),diag(qux[,,2,3])),4,3) # Aun falta optimizar

# Solucion item C)

# Si accedemos a la 4ta columna de cada una de las matrices de qux,contaremos con 6 columnas 
# disponibles con los cuales formaremos tres matrices de dimensiones , 4xn , 4xq y 4xs siendo 
# n+q+s=6. luego estas dimensiones formaran una matriz de dimension 2x3 de la forma:
# 4 4 4 
# n q s
# con lo cual la suma por filas,nos devolvera el vector: 12 6
# Expresandolo en codigo:

apply(matrix(c(4,1,4,2,4,3),2,3),1,sum) # Falta optimizar!

