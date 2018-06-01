# Autor: Grupo 4
# Respuesta 2: El codigo muestra el uso de Matrices

# Respuesta 2.a: Se muestra el uso de "matrix" para la creacion de matrices 
  matrix_a <- matrix(data= c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5), nr=4, nc=2, byrow=TRUE)
  # nr = numero de fila, nc = numero de columnas
  matrix_a 
  # Utilizamos "dim" para hallar la dimension de la matriz
  dim(matrix_a)

# Respuesta 2.b: Se muestra la eliminacion de una fila
  # Utilizamos el signo '-' y indicamos la fila que se quiere eliminar
  dim(matrix_a[-4,])

# Respuesta 2.c: El codigo muestra el uso de "sort" para ordenar una columna 
  # sobreescribimos la segunda columna con la misma columna ordenada
  matrix_a[ , 2] <- sort(matrix_a[, 2])   
  # sort por defecto ordena crecientemente
  matrix_c <- matrix_a
  # Creamos la matrix_c
  matrix_c
  
# Respuesta 2.d: El codigo muestra el uso de "-" para eliminar la fila 1 y columna 4
  # se usa "matrix" para asegurar que es una matriz de una sola columna
  matrix_d <- matrix(matrix_a[-1][-4])
  matrix_d
  class(matrix_d)
  
# Respuesta 2.e: El codigo muestra es uso de "matrix" para crear una matriz de 2x2 
  # almacenando los 4 elementos inferiores de matrix_c
  matrix_e <- matrix(data = c(matrix_c[3,], matrix_c[4,]), nrow = 2,ncol = 2, byrow = TRUE)
  matrix_e

# Respuesta 2.f: El codigo muestra el uso de "for" para sobreescribir los elementos de matrix_c
  j = 1
  for(i in  -1 / 2 * diag(matrix_e)) {
    matrix_c[4,j] <- i
    matrix_c[1,j] <- i
    j = j + 1
  }
  rm(j, i)
  matrix_c
  
# Respuesta 2.g: El codigo muestra el uso de "diag" para crear una matriz diagonal.
  matrix_d <- diag(c(2, 3, 5, -1))
  matrix_d
  # Utilizamos "solve" para hallar la inversa de una matriz y "%*%" para multiplicar matrices
  solve(matrix_d) %*% matrix_d - diag(4)
  #diag(4) es la matriz identidad de 4x4

  
# fin del script
