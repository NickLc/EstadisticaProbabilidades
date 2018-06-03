# Nombre : Lázaro Camasca Edson Nick cod 20160468E 
# Respuesta 6: 

# Respuesta 6.a:

# Es un data frame de los terremotos fuera de Fiji
# Nos proporciona datos como latitud, longitud, profundidad, magnitud, estaciones
 quakes

 condicion <- quakes[4] >= 5
 condicion
 # Seleccionamos los registros que cumplan con la condición.
 lat <- quakes$lat[condicion]
 long <- quakes$long[condicion]
 depth <- quakes$depth[condicion]
 mag <- quakes$mag[condicion]
 stations <- quakes$stations[condicion]
 
 #Creamos un data frame donde la magnitud es mayor o igual que 5
 magnitud5 <- data.frame(lat,long,depth,mag,stations)
 magnitud5
 class(magnitud5)
 

 write.table(magnitud5, file = "q5.txt",sep = "!",row.names = FALSE,col.names = FALSE) # No incluimos los nombres de las filas ni de las columnas
 q5.dframe <- read.table(file = "q5.txt", sep = " ")
 q5.dframe
 help("read.table")

# Respuesta 6.b: Creacion de un grafico usando el dataframe Duncan
 
# Instalamos el paquete car
 install.packages("car")
# Habilitamos el paquete car
 library("car")

 Duncan  # Data frame que proporciona datos historicos sobre
          # el prestigio y otras características de 45 ocupaciones de los Estados Unidos en 1950
 v1 <- 1:100
 plot.new()
 plot.window(range(v1), range(v1))
 box()   
 axis(1)    # Colocamos los ejes
 axis(2)
 
 selectMenor80 <- Duncan[4] <= 80   # Creamos los vectores para la seleccion
 selectMayor80 <- Duncan[4] > 80

 # El argumento pch indica la forma de los puntos ( 0= cuadrador,1=circulos,2=triangulos)
 # para puntos de color negro pch = 16
 # Colocamos los puntos que el prestige sea mayor que 80
 points(Duncan$education[selectMayor80], Duncan$income[selectMayor80], pch = 16)
 
 # Colocamos los puntos que el prestige sea menor o igual que 80
 points(Duncan$education[selectMenor80], Duncan$income[selectMenor80], pch = 1)
 
 mtext("education", side=1, line=3)
 mtext("income", side=2, line=3)
 
 
 
# Respuesta 6.c:
# Creamos una lista con los 3 conjuntos de datos
 exer <- list(quakes, q5.dframe, Duncan)
 exer
 
# Guardamos la lista exer
 write(exer, file = "Ejercicio_df.txt")
 
# Leemos el archivo Ejercicio_df.txt 
 lista.de.dataframes <- read.table(file ="Ejercicio_df.txt")
 
 
#fin script