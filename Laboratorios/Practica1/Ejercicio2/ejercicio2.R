# Pregunta 2:
# Autor: Grupo 4

MA <- matrix(data= c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5), nr=4, nc=2, byrow=TRUE)
MA
# la dimensión de nuestra matriz es:
dim(MA)
# si le quitamos una fila la dimensión es...
dim(MA[-4,])
# sobreescribimos la segunda columna de la
# matriz con la misma columna en orden inverso
MA[,2] <- rev(MA[,2])
C <- MA
C
# eliminamos la cuarta fina y la primera columna
D <- matrix(MA[-1][-4])
D
# almacenaremos 4 elementos inferiores de C
# como una matriz de 2x2
E <- matrix(data = c(C[3,], C[4,]), nrow = 2,ncol = 2, byrow = TRUE)
E
j = 1
for(i in  -1 / 2 * diag(E)) {
  C[4,j] <- i
  C[1,j] <- i
  j = j + 1
}
rm(j, i)
C
# creamos una matriz A
A <- diag(c(2, 3, 5, -1))
A
# comprobamos lo requerido
solve(A) %*% A - diag(4)

# fin del script

