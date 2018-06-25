# Autor: Grupo 4

# Respuesta 1.a: El codigo muestra el uso de la funcion "ls"
# para listar el paquete methods.
# al hacer all.names=TRUE no se omitiran los elementos de METHODS que empiezen con el caracter "."
arr=ls("package:methods",all.names=TRUE)
# Mostrar los elementos.
arr
# Mostrar la cantidad de elementos.
length(arr)
# Modificamos arr
arr = arr[1:20]
# Mostramos los 20 primeros elementos
print(arr)

# Respuesta 1.b: El codigo muestra el uso de la funcion "environment"
# para determinar el entorno de las funciones
environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)


#Respuesta 1.c: El codigo muestra el uso de la funcion "which"
# para comprobar que un paquete esta dentro de otro
x=ls("package:graphics",all.names=TRUE)
x
# Si smoothScatter pertenece al package graphics, se imprimira en pantalla
x[which(x=="smoothScatter")]
# Devolvemos el índice de smoothScatter
which(x=="smoothScatter")
