## item a ##

qux <- array(96:1,dim=c(4,4,2,3))   ## se inicializa el array
z=apply(qux[,,2,],3,diag)    ## bucle implicito mediante la funcion apply
  ##qux[,,2,] es para trabajar sobre la segunda capa,MARGIN=3 es para trabajar sobre la dimensión 3, "diag" es el operador diagonal de la matriz  
z ##visualizamos el resultado