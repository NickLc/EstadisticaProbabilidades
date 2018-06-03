#Autor: Grupo 4
#Respuesta 8: 

#Pregunta 8.(a,b)
# Creación de un data frame

Persona <- c("Stan","Francine","Steve","Roger","Hayley","Klaus")
nivel <- c("Alto","Medio","Bajo")
Puntuacion <- factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"),levels = nivel)
Sexo <- factor(c("M","F","M","M","F","M"), levels = c("F","M"))
edad <- c(41,41,15,1600,21,60)

dframe <- data.frame(Persona,Sexo,Puntuacion,edad)
dframe


# Pregunta 8.(c):
person<-c("Peter","Lois","Meg","Chris","Stewie")
edad<-c(42,40,17,14,1)
sexo<- factor(c("M","F","F","M","M"), levels = c("F","M"))
misdatos <- data.frame(person,edad,sexo)
misdatos

# Pregunta 8.(d):
# Agregamos una nueva columna llamada edad.mon
misdatos$edad.mon <- misdatos$edad*12
misdatos

# Creamos una nueva version de misdatos, eliminando la columna edad.mom
# Para eliminar la una columna utilizamos
 misdatos2 <- subset( misdatos, select = -edad.mon )
 misdatos2
 
 
 # Pregunta 8.(e): Combinamos dos data frames
 

 misdatosframe <- cbind(misdatos2,dframe)
 misdatosframe
 
 # fin del script
