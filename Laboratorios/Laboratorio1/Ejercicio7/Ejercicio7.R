# Autor: grupo 4
# Respuesta 7: 

# Respuesta 7.(a): Valores que tienen al infinito

f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133)
# Creamos la condicion de los valores que llegan a ser infinito
infinito <- (f1^75 == Inf)  
# Creamos la condicion de los valores que llegan a ser menos infinito
infinitoNegativo <-  (f1^75 == -Inf)
infinito
# Mostramos los elementos que cumplan la condición.
f1[infinito]
f1[infinitoNegativo]


# Respuesta 7.(b): valores de una matriz que cumplen una condicion
# Creamos la matriz varMatriz
varMatriz <- rbind(c(77875.40, 27551.45, 23764.30, -36478.88),
           c(-35466.25, -73333.85, 36599.69, -70585.69),
           c(-39803.81, 55976.34, 76694.82, 47032.00))
varMatriz
class(varMatriz)

# 7.(b).1
# Condicion cuando elevamos a 65 y dividimos entre Inf
noExisten <- (varMatriz^65)/Inf  
noExisten
varMatriz[noExisten]

# 7.(b).2
# Condicion cuando elevamos a 67 y sumamos infinito
cond67inf <- (varMatriz^67) + Inf 
cond67inf
# Devolver los que no son NaN
varMatriz[cond67inf != NaN]
# Comprobando la condición de 7.b.2 con otra condicion que al elevar 
# a 67 no sean igual a -Inf
cond67 <- varMatriz^67 != -Inf
cond67
# Identificando los valores que cumplan con la cond67
varMatriz[cond67]

# 7.(b).3
# Condición cuando elevamos al 67
condInf <- varMatriz^67 == Inf | varMatriz^67 == -Inf
condInf
# Identificamos aquellos elementos que cumplen la condición
varMatriz[condInf]


# 7.(c): 
f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
f2
# La longitud de f2 es 8: Verdadero
length(f2)
# Llamando a which(x=is.na(x=f2)), no resultará en 4 y 8: Falso
which(x=is.na(x=f2))

# Verificando is.null(x=f2), proporciona la localización 
# de dos valores NULL, presentes  : Falso
is.null(x=f2)

#fin script