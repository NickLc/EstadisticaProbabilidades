## victor ponce pinedo ##

qux <- array(96:1,dim=c(4,4,2,3))  ## se inicializa el array
y=apply(apply(qux[,4,,],3,dim),1,sum) ## el apply interno es para obtener las dimensiones de las matrices
## el aplly externo es para optener la suma de esas dimensiones
y