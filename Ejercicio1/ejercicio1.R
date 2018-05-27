# Nombre: Marco Naro León Rios 20160775E
# Pregunta 1:
# El código almacena una secuencia de valores
# del 5 al -11 disminuyendo -0.3 a cada paso
# no llega a incluir al -11

A <- seq(5, -11, -0.3)
A
# ahora invertiremos el orden de nuestra
# secuencia
A = rev(A)
A

# definimos el vector pedido
# usaremos un bucle para facilitarnos
# el trabajo de repetición
v = c(-1, 3, -5, 7, -9)
a <- NULL
for(i in 1:5) {
  a = c(a,rep(v[i],10))
}
a = c(a,a)
# imprimimos el resultado ordenado de mayor
# a menor
rev(sort(a))

d1 <- 6:12
d2 <- rep(5.3, 3)
d4 <- -3
d3 <- seq(102, length(a), by=(length(a)-102)/8)
d5 <- c(d1, d2, d4, d3)
length(d5)
# fin del script