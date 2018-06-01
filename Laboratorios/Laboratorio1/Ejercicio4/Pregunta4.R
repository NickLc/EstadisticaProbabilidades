# Autor: Grupo 4
# Respuesta 4: 

# Respuesta 4.a: El codigo muetra el uso de la funcion "class" para verificar si la clase esta
# explicita o implicita

  # La clase esta explícitamente definida.
  f1 <- array(data=1:36,dim=c(3,3,4)) ;class(f1)
 
  # La clase esta implicitamente definida.
  bar <- as.vector(f1) ;class(bar)

  # La clase esta explícitamente definida.
  baz <- as.character(bar) ;class(baz)

  # La clase esta explícitamente definida.
  qux <- as.factor(baz) ;class(qux)

  # La clase esta implicitamente definida.
  quux <- bar+c(-0.1,0.1) ;class(quux)
 
# Respuesta 4.b: El codigo muestra el uso de funciones de coerción "is.numeric", "is.integer"  

  v1 <- is.numeric(f1) + is.integer(f1)
  v2 <- is.numeric(bar) + is.integer(bar)
  v3 <- is.numeric(baz) + is.integer(baz)
  v4 <- is.numeric(qux) + is.integer(qux)
  v5 <- is.numeric(quux) + is.integer(quux)
  
  # Creacion de un factor con niveles 0,1,2  
  Factorb <- factor(c(v1,v2,v3,v4,v5), levels = c(0,1,2))
  Factorb
  # Muestra el factor como una tabla
  table(Factorb)

  # Coercer en un vector numérico
  vNumerico <- as.numeric(Factorb)
  vNumerico 
  
  # Comparacion entre Factorb y vNumerico, cada elemento del vNumerico es uno mas
  # que del Factorb
  
# Respuesta 4.c: El codigo muestra el uso de las coerciones
  #Creación de la matriz A
  A <- cbind(c(34, 23, 33, 42, 41),c(0,1,1,0,0),c(1,2,NA,1,2))
  A

# 4.c.1: Realizamos una coerción de A a un data frame.  
  DframeA <- as.data.frame(A)
  # Verificamos el valor data frame de A
  class(DframeA)   
  
# 4.c.2 Realizamos una coerción de la segunda columna a un valor lógico.
  # Como no se puede realizar la coerción de un data frame a un valor lógico.
  # Selecionamos la segunda columna  
  Columna2 <- DframeA[2] 
  # Realizamos una coerción a un valor matrix
  Columna2 <- as.matrix(DframeA[2])
  # Ahora realizamos la coerción a un valor lógico
  Columna2 <- as.logical(Columna2)
  # Remplazamos el valor en la columna 2
  DframeA[2] <- Columna2  
  # Verificamos el valor lógico de la columna 2
  class(DframeA$V2)       

# 4.c.3 Realizamos una coerción de la tercera columna a un valor factor.
  # Como no se puede realizar la coerción de un data frame a un valor factor.
  # Selecionamos la tercera columna
  Columna3 <- DframeA[3]
  # Realizamos una coerción a un valor matrix
  Columna3 <- as.matrix(DframeA[3]) 
  # Ahora realizamos la coerción a un valor factor
  Columna3 <- as.factor(Columna3)
  # Remplazamos el valor en la columna 3
  DframeA[3] <- Columna3
  # Verificamos el valor factor de la columna 3
  class(DframeA$V3)       
  
# Mostramos el DframeA
  DframeA
  
    
