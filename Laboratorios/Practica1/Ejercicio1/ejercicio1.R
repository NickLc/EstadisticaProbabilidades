#Autor: Grupo 4

# Respuesta 1: El codigo muestra el uso de vectores.

# Respuesta 1.a: El codigo muestra el uso de "seq" en la creaci?n de un vector,
#                una secuencia de(from) a(to) agregando(by).
  vector_a <- seq(from = 5, to = -11, by = -0.3)  
  vector_a

# Respuesta 1.b: El codigo muestra el uso de "rev" para invertir la secuencia(vector).
  vector_a = rev(vector_a)
  vector_a

# Respuesta 1.c: El codigo muestra el uso de "rep" para repetir una secuencia. 
  vector_c <- c(-1, 3, -5, 7, -9)
  # El numero de repeticiones el definido por "times"
  vector_c <- rep(vector_c ,times = 2)
  print(vector_c)

 # Utilizamos "sort" para ordenar la secuencia, habilitamos la opcion decreciente
  print(sort(vector_c, decreasing = TRUE))

#Respuesta 1.d: El codigo muestra el uso de "length" para medir la longitud del vector
  d1 <- 6:12
  d2 <- rep(5.3, times = 3)
  d4 <- -3
  d3 <- seq(from = 102, to = length(vector_a), by = (length(vector_a)-102)/8)
  # Creacion vector_d 
  vector_d <- c(d1, d2, d4, d3)
  # Longitud del vector = 20
  length(vector_d)
  
#fin del script  
