##item a

loopvec1 <- 5:7
loopvec2 <- 9:6


mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1

index=1
size1=length(loopvec1)
size2=length
c=1
for(i in 1:12){
   if(i%%4!=0){
     mat1[c,i%%4]=loopvec1[c]*loopvec2[i%%4]
   }
   else{
     mat1[c,(i/c)%%(4+1)]=loopvec1[c]*loopvec2[i%%5]
     c=c+1
      }
     
     
    
}
mat1



##  item b

cadenas=c("Peter","Homer","Lois","Stewie","Maggie","Bart")
vector_resultado=NULL
for(j in 1:6){
  if(!is.null(switch(EXPR=cadenas[j],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90)))
vector_resultado=c(vector_resultado,switch(EXPR=cadenas[j],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90))
}

vector_resultado




## item c

unalista <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",ee=list(c("hola","tu"),matrix(c("hola","there"))),ff=matrix(c("red","green","blue","yellow")))

contar_matrices_en_lista<-function(lista){
  contar=0
  for(i in lista){
    if(class(i)=="list"){
      
      contar=contar+contar_matrices_en_lista(i)
    }
    if(class(i)=="matrix"){contar=contar+1}
    
  }
    return(contar)

  }


contar_matrices_en_lista(unalista)

