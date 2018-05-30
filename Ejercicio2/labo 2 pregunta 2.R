
help(array) ## con esto veremos la documentación de la función
array(8:1,dim=c(2,2,2)) ## en esta función solamente se emplea la asignación posicional, ya que los argumentos ocupan el lugar que dicta la documentación


help(rep)  ## con esto veremos la documentación de la función
rep(1:2,3)   ## en esta función solamente se emplea la asignación posicional, ya que los argumentos ocupan el lugar que dicta la documentación

help(seq)  ## con esto veremos la documentación de la función
seq(from=10,to=8,length=5) ## se emplea coincidencia exacta por nombre del argumento y asgnación por posición ya que los argumentos son nombrados exactamente como dicta la documentación y se ubican en la ubicación que dicta la misma

 
help(sort)  ## con esto veremos la documentación de la función
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3)) ## se emplea coincidencia exacta del nombre del argumento,ya que los argumentos son nombrados exactamente como dicta la documentación

help(which)  ## con esto veremos la documentación de la función
which(matrix(c(T,F,T,T),2,2)) ## aqui se emplea la asignación posicional, cada argumento va en el lugar que le corresponde

help(which)   ## con esto veremos la documentación de la función
which(matrix(c(T,F,T,T),2,2),a=T)  ## aqui se emplea la asignación posicional, cada argumento va en el lugar que le corresponde