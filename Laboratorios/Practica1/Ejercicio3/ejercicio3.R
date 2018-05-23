# Nombre: Marco Naro León Rios 20160775E
# Pregunta 3:
# 

# creamos nuestros vectores de datos
votantes.sexo <- c("F", rep("M", 3), "F", "F", rep("M", 4), "F", "M", rep("F", 4), rep("M", 4))
votantes.partido <- c("Laborista", "Nacional", "Nacional", "Laborista", "Nacional", "Verdes", "Nacional",
                      "Nacional", "Verdes", "Otro", "Verdes", "Laborista", "Nacional", "Nacional", "Laborista",
                      "Laborista", "Nacional", "Nacional", "Laborista", "Otro")
# creamos nuestros factores. No tiene sentido
# usar ordered pues estamos trabajando con 
# variables categóricas nominales. Esto es, 
# ninguna es "mayor" que la otra.
fvotantes.sexo <- factor(votantes.sexo, levels = c("M", "F"))
fvotantes.partido <- factor(votantes.partido, levels = c("Nacional", "Laborista",
                                                        "Verdes", "Maori", "Otro"))
levels(fvotantes.sexo) <- c("Masculino", "Femenino")
fvotantes.sexo; fvotantes.partido

# R organiza los niveles en el orden en que le son
# presentado por el programador. Para ilustrarlo, 
# crearemos una aparente pardoja:
ejemplo <- c(1, 2, 3)
factor_ejemplo <- factor(ejemplo, ordered = TRUE, levels = c(3,2,1))
factor_ejemplo[3]
factor_ejemplo[1]
factor_ejemplo[3] < factor_ejemplo[1] # es 3 < 1?
# Lo anterior parece contradictorio pero no lo es.
# Lo que R está diciendo es que hemos definido el 
# nivel "3" como un nivel inferior al nivel "1", no
# que 3 es menor que 1

# ahora veamos cuáles son los partidos elegidos
# por votantes hombres
summary(fvotantes.partido[fvotantes.sexo== "Masculino"])
# Ahora veamos cómo va el partido nacional
summary(fvotantes.sexo[fvotantes.partido == "Nacional"])
#nuevos datos
votantes.sexo <- c(votantes.sexo, c("M", "M", "F", "F", "F", "M"))
votantes.partido <- c(votantes.partido, c("Nacional", "Maori", "Maori", "Laborista", "Verdes", "Laborista"))
fvotantes.sexo <- factor(votantes.sexo, levels = c("M", "F"))
fvotantes.partido <- factor(votantes.partido, levels = c("Nacional", "Laborista",
                                                         "Verdes", "Maori", "Otro"))
levels(fvotantes.sexo) <- c("Masculino", "Femenino")
fvotantes.sexo; fvotantes.partido

#niveles de confianza
porcentajes.confianza <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61, 0)
votantes.confianza <- NULL
for(i in porcentajes.confianza) {
  if(i <= 30) {
    votantes.confianza <- c(votantes.confianza, "Bajo")
  }
  if(i > 30 && i <= 70) {
    votantes.confianza <- c(votantes.confianza, "Moderado")
  }
  if(i > 70 && i <= 100) {
    votantes.confianza <- c(votantes.confianza, "Alto")
  }
}
votantes.confianza
niveles.confianza <- c("Bajo", "Moderado", "Alto")
fvotantes.confianza <- factor(votantes.confianza, ordered=TRUE, levels=niveles.confianza)
summary(fvotantes.confianza[fvotantes.partido=="Laborista"])
summary(fvotantes.confianza[fvotantes.partido=="Nacional"])
# las personas necesitan mayor convicción...
#fin del script