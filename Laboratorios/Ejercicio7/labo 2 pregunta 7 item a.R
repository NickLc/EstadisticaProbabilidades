prob=0
prob
puntaje<-function(x){      ## funcion para contar hacia donde se mueve la persona, si es positivo para la derecha, si es negativo para la izquierda
  puntos=0
  for(i in x){
    if(i=='+'){puntos=puntos+1}
    else if(i=='-'){puntos=puntos-1}
  }
  return(puntos)
  
    }




contar_signos_mas<-function(x){     ## cuenta los signos + del arreglo X
  
  return(length(which(x=='+')))
}

contar_dudas<-function(x){             ## cuenta las dudas del arreglo x
  return(length(which(x=='?')))
  
  }


A=c('+','-','+','-')
B=c('+','-','?','?')
##A=c('+','+','-','+','-')
##B=c('+','-','+','-','+')

mov_A=puntaje(A)      ## a donde se debe mover segun A
mov_B=puntaje(B)      ## a donde se debe mover segun B 
signos_mas_A=contar_signos_mas(A)   ## n° de signos de A
## VICTOR PONCE PINEDO ##

signos_mas_B=contar_signos_mas(B)   ## n° de signos de B
dudas_B=contar_dudas(B)      ## n° de dudas de B
signos_mas_A         ## visualizacion
signos_mas_B       ## visualizacion
dudas_B        ## visualizacion


if(dudas_B==0 & mov_A==mov_B) ## si B no tiene dudas y sus apuntes "coinciden" con los de A
 { prob=1 }

else{     ## si no pasa lo anterior
if(abs(mov_A-mov_B)>dudas_B){ prob=0        }       ## si es imposible acatar lo que dice A
prob
if(abs(mov_A-mov_B)<=dudas_B){       ## si es que es posible acatar lo que dice A se calcula la probabilidad
  u=choose(dudas_B,abs(signos_mas_A-signos_mas_B))
  
  total= 2**dudas_B
  
  prob=u/total
  }
}
prob                 ## se visualiza la probabilidad
