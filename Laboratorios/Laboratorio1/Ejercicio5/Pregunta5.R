# Autor: Grupo 4
# Respuesta 5: 

# Respuesta 5.a:

 plot.new() # Se crea un marco(frame) para el grafico
        
 plot.window(range(pressure$temperature), # La funcion configura el sistema de coordenadas 
               range(pressure$pressure))  # para una ventana grafica, recibe dos vectores con argumento 
                                          # para definir el rango de las coordenadas x,y
                                          # el rango para x es range(pressure$temperatura) 
                                          # pressure es un data frame que viene por defecto en R
 box()    # Dibuja un cuadro alrededor del frame                                            
 axis(1)  # Funcion para añadir un eje, el valor 1 añade en la parte inferior
 axis(2)  # El valor 2 añade en la parte izquierda
          # El valor 3 en la parte superior y el valor 4 en la derecha
 
 points(pressure$temperature, pressure$pressure)  # Dibuja una secuencia de puntos en las coordenadas especificas
                                          # las coordenadas para x estan dadas por pressure$temperature
                                          # las coordenadas para y estan dadas por pressure$pressure
 
 # La función mtext escribe texto en uno de los márgenes del frame
 # El argumento side nos indica en que lado se va escribir (1=inferior, 2=izquierda, 3=parte superior,4=derecha)
 # El argumento line en que linea de margen se va escribir (se cuenta exteriormente a partir de 0)
 mtext("temperatura", side=1, line=3)
 mtext("presion", side=2, line=0)  # Escribir presion en la parte izquierda con en la tercera linea de margen
 mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura", side=3, line=1, font=2)
 
 # El argumento font es la fuente para el texto (3=cursiva, 2=negrita, 1=defecto, 4=negrita y cursiva) 
 
 
 # Respuesta 5.b:
 plot.new()
 grid()
 grid::grid.xaxis()
 grid::grid.circle()
 grid::grid.text("hola",just = "top")  
 
 #fin del script