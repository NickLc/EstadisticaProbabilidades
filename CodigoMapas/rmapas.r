#Coloracion de Mapas

# Instalamos el paquete
 install.packages("rgdal")
 install.packages("sp")
 install.packages("RColorBrewer")

# Activamos la libreria 
 library(rgdal)
 library(sp)
 library(RColorBrewer)


 chooseCRANmirror()

# Importamos el archivo .shp
 mapmundo <- readOGR(file.choose())
 # file.chosse() sirve para subir nuestro archivo a R
 # seleccionamos el archivo .shp

# Creamos el opjeto mapmundo, una especie de lista que contiene
#elementos como data frame, poligonos, etc. 
#Echemos un ojo al mapa.
 plot(mapmundo)

#Muestra el dataframe de mapmundo
 View(mapmundo@data)

# Creamos un dataframe lugarColorear

# Creamos un vector colorear
 #vector_logico <- mapmundo@data$DPTO < 5
 vector_colorear <- c(c(1:8),rep(0,25))
 vector_colorear
 
 #agregar al col el vector de las condiciones
 plot(mapmundo, col = vector_colorear)
 
 #El mapa tiene z regiones
 #vector_colorear(a,b,c,.....,z)
 #el color "a" colorea a la region 1
 
 # Ya que el "vector_colorea" colorea el mapa entonces
 # OBJETIVO
 #Debemos encontrar el vector que cumpla con el problema
 # de la satisfaccion de restricciones
 
 
 #colores
 #0 = blanco
 #1 = negro
 #2 = rojo
 #3 .... 8  
  
  #fin del script
 
 
  
# LIBRERIAS UTILES
  library(sp) # para poder graficar los poligonos
  library(rgdal) # para cargar los archivos shp
  library(matrix) # depende de spdeb
  library(spdep) # para hacer el test de morgan
  library(classint) # para poder hacer las classes que se 
                    #van a asignar a la paleta de coloress
  library(maptools) #sirve para poner la leyenda en el grafico
  library(raster)#sirve para poner la leyenda en el grafico
  library(RColorBrewer) # para hacer las paletas de colores
  library(scales) #sirve para visualizar la paleta de colores con
                  #con su respectivo nombre
  muni <- readOGR(file.choose()) #asignar al objeto muni el archivo shape
  bd <- read.csv(file.choose(), header=T, sep = ";", row.names = 1)
      #Asignar el objetp bd la base de datos
  paleta <- brewer.pal(11, ("Spectral")) #Crea la paleta de colores
                  #esta paleta tiene 11 colores
  
  