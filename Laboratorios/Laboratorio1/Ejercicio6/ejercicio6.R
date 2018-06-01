# Autor: Grupo 4
# Pregunta 6:
#veamos si podemos acceder a datasets

help("datasets")
library(help = "datasets")
quakes
archivo <- subset(quakes, subset = quakes$mag >= 5)
# creamos la carpeta contenedor para almacenar el archivo
system("mkdir contenedor")
# almacenamos el archivo en la carpeta contenedora
write.table(archivo, file = "./contenedor/q5.txt", append = FALSE,
            sep = "!", row.names = FALSE)
# ahora importamos el mismo archivo
q5.dframe <-read.table("./contenedor/q5.txt", sep = "!", header = TRUE)
# no puedo activar el paquete car....




#script inconcluso
