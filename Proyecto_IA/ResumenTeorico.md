# Resumen Teórico
----


## __INTELIGENCIA ARTIFICIAL__
Realizado por: Ponce Pinedo Víctor Alberto
----
La inteligencia artificial es un área de estudio bastante nueva. El propio término de **INTELIGENCIA ARTIFICIAL** fue implantado en una conferencia en el año de 1956. Esta área aborda la simulación de procesos de inteligencia humana por parte de máquinas, especialmente sistemas informáticos. Estos procesos incluyen el aprendizaje (la adquisición de información y reglas para el uso de la información), el razonamiento (usando las reglas para llegar a conclusiones aproximadas o definitivas) entre otras.

## DEFINICIONES DE IA

Durante el transcurso del tiempo han habido muchos científicos que han tratado de proporcionar una definición formal de IA. Muchas de estas definiciones se pueden agrupar mediante 4 enfoques distintos:

1. Sistemas que piensan como humanos:
+ El esfuerzo de hacer que los computadores piensen... máquinas con mentes, en el más amplio sentido literal (Haugeland, 1985).
+ La automatización de actividades que vinculamos con procesos de pensamiento humano, actividades como la toma de decisiones, resolución de problemas, aprendizaje (Bellman, 1978).
    
2. Sistemas que actúan como humanos:
           
+ El arte de desarrollar máquinas con capacidad para realizar funciones que cuando son realizadas por personas requieren de inteligencia (Kurzweil, 1990).
+ El estudio de cómo lograr que los computadores realicen tareas que, por el momento, los humanos hacen mejor (Rich y Knight, 1991).
3. Sistemas que piensan racionalmente:
+ El estudio de las facultades mentales mediante el uso de modelos computacionales (Charniak y McDermott, 1985).
+ El estudio de los cálculos que hacen posible percibir, razonar y actuar (Winston, 1992).
4. Sistemas que actúan racionalmente:   
+ La Inteligencia Computacional es el estudio del diseño de agentes inteligentes (Poole etal., 1998).
+ La IA está relacionada con conductas inteligentes en artefactos (Nilsson, 1998).

## LA PRUEBA DE TURING

Para poder comprobar si efectivamente un sistema informático es realmente inteligente Alan Turing sugirió una prueba basada en la incapacidad de diferenciar entre entidades inteligentes indiscutibles y seres humanos. Un evaluador humano empieza a formular preguntas a un ser humano y a un sistema informático y estos dos brindarán sus respectivas respuestas. Si el evaluador humano concluye que no puede diferenciar cual de las respuestas provienen del sistema informático entonces se podrá decir que el sistema informático evaluado es inteligente.

## BASES DE LA INTELIGENCIA ARTIFICIAL
+ Filosofía: las leyes que gobiernan el pensamiento de un ser humano, la relación entre el conocimiento y el mundo físico.
+ Economía: la teoría de la toma de decisiones, la teoría de juegos, investigación operativa.
+ Matemáticas:  la lógica, estadística y probabilidadesm, la computabilidad.
+ Neurociencia: el procesamiento de la información por parte del cerebro humano.
+ Psicología: el actuar y pensar de las personas, psicología cognitiva.
+ Computación: diseño de mecanimos que soporten una IA (el hardware).
+ Linguística: representación del conocimiento, gramática de la lengua,lingüística computacional.

## ÁREAS DE APLICACIÓN DE LA INTELIGENCIA ARTIFICIAL

+ Tratamiento de Lenguajes Naturales: capacidad de traducción, órdenes a un sistema operativo, conversación hombre-máquina, etc.
+ Sistemas Expertos: sistemas que se les implementa experiencia para conseguir deducciones cercanas a la realidad.
+ Robótica: navegación de robots móviles, control de brazos móviles, ensamblaje de piezas, etc.
+ Problemas de Percepción: visión y habla, reconocimiento de voz, obtención de fallos por medio de la visión, diagnósticos médicos, etc.
+ Aprendizaje: modelización de conductas para su implante en computadoras.

## BÚSQUEDA HEURÍSTICA


Primero definamos lo que es una heurística. Una heurística es un algoritmo diseñado para encontrar la solución más óptima posible de un problema dado, sin embargo puede que si bien una solución se arroja de manera rápida, no se puede demostrar que siempre será así, o bien si la heurística nos devuelve la solución correcta no es posible demostrar que ante otros parámetros siempre devuelva la solución correcta. Las heurísticas están orientadas a reducir la cantidad de búsqueda requerida para encontrar una solución.

Ahora, debido a que muchos problemas y las etapas a seguir para resolverlos se pueden modelar mediante grafos, una búsqueda heurística nos ayudará a encontrar el camino más corto entre un nodo dado y el nodo objetivo que vendría a representar para nosotros la solución del problema. Para ello se definen funciones heurísitcas que representan que tan óptimo es ir hacia un nodo dado y en base a dicha función es que se van tomando las decisiones de que camino recorrer para poder llegar al objetivo.


## ALGORITMO A*

Este algoritmo es un metodo de solución para hallar el camino de menor coste en un grafo desde un nodo en específo hasta otro. Para lograr este resultado el algoritmo se vale de una función de evaluación de optimalidad *f*(n) y de funciones *g*(n) y *h*(n) donde:

+ *f*(*n*):  coste más barato estimado de la solución a través de *n*.
+ *g*(*n*): coste del camino desde el nodo inicio al nodo *n*.
+ *h*(*n*): función heurística que determina el coste estimado del camino más barato desde n al objetivo.
Lo que hará un algoritmo en un nodo *x* determinado será analizar mediante la función *f* los nodos adyacentes a *x* y el nodo *y* escogido será el que nos devuelve el menor coste, es decir, el menor *f*(*y*) de todos.
----

## __BÚSQUEDA ENTRE ADVERSARIOS__
Realizado por: Lázaro Camasca Edson Nick 
----
El problema de búsqueda entre adversarios, también conocido como juego. El jugar a juegos fue una de las primeras tareas emprendidas en IA. Desde 1950 hasta la actualidad hubo un progreso continuo en el nivel de juego, hasta el punto de que las máquinas han derrotado a campeones humanos en ajedrez. Los juegos son interesantes porque son demasiado difíciles de resolver. Por ejemplo, el ajedrez tiene un árbol de búsqueda de aproximadamente $$10^{154}$$ nodos por lo tanto se requiere la capacidad de tomar decisiones óptimas.  
Los juegos en inteligencia artificial, son aquel entorno en donde agentes tendrán que considerar las acciones de otros agentes, los agentes se encuentran en conflicto y ambos jugadores tratan de maximizar su rendimiento.
Un juego puede definirse por el estado inicial (como se establece en el tablero), las acciones legales en cada estado, un test terminal (que dice cuándo el juego está terminado), y una función de utilidad que se aplica a los estados terminales.

Clasificacion de juegos segun la IA:
+ Juegos de suma cero.
+ Minimax o de dos jugadores.
+ Por turnos.
+ Deterministas.
+ De información perfecta, como por ejemplo el Ajedrez.

En juegos de suma cero de dos jugadores con información perfecta, **el algoritmo minimax** puede seleccionar movimientos óptimos usando una enumeración primero en profundidad del árbol de juegos.  
El algoritmo de búsqueda **alfa-beta** calcula el mismo movimiento óptimo que el minimax, pero consigue una eficiencia mucho mayor, eliminando subárboles que son probablemente irrelevantes.

---- 

## __Machine Learning__
Realizado por: Patrichs Inocente
----
Es un tipo de inteligencia artificial (AI) que proporciona a las computadoras la capacidad de aprendizaje automatico, sin ser programadas explícitamente. El aprendizaje automático se centra en el desarrollo de programas informáticos que pueden cambiar cuando se exponen a nuevos datos.

### Perceptron

Es  la  red  de  neuronas  artificiales  más  sencilla.  Está  compuesta  únicamente  por  una  capa  de neuronas de entrada y otra capa de neuronas de salida. 
El  Perceptrón  es  una  red  capaz  de  aprender.  En  su  configuración  inicial  a  los  pesos  de  las conexiones se les da valores arbitrarios, por lo que ante la presencia de estímulos,la red genera respuestas  arbitrarias,  respuestas  que  no  coinciden  con  las  deseadas,  y  no  es  hasta  que  los 
pesos se han ajustado de tal modo que la respuesta que emite es la deseada, que se considera que la red ha conseguido aprender.

### K-Vecinos mas cercanos

Es un algoritmo clasificador supervisado basado en Reconocimiento de patrones en criterios de vecindad, y también se conoce como algoritmo de clasificación k-NN. Parte de la idea de que una nueva muestra será clasificada a la clase a la cual pertenezca la mayor cantidad de vecinos más cercanos del conjunto de entrenamiento más cercano a ésta. 

### SVM 

Son las siglas de Support Vector Machine. Este algoritmo supervisado se utiliza generalmente para solucionar problemas de clasificación.
La idea del algoritmo es ser capaces de encontrar, con los datos de entrenamiento, un hiperplano que maximiza la distancia a las diferentes clases, lo que es conocido como el “margen máximo”.

Una vez hallado este hiperplano podemos usarlo para clasificar nuevos puntos.

SVM tiene múltiples aplicaciones, por ejemplo para reconocimiento de imágenes, clasificación de texto o aplicaciones en el área de la biotecnología.

### Arboles de decisión

Es una forma gráfica y analítica de   representar   todos   los   eventos   (sucesos)   que   
pueden  surgir  a  partir  de  una  decisión  asumida  en  cierto momento. 
Nos  ayudan  a  tomar  la  decisión  “más  acertada”,  desde   un   punto   de   vista   probabilístico,   ante   un   
abanico de posibles decisiones.

### Redes Neuronales

Consisten   de   unidades   de   procesamiento   que   intercambian   datos   o   
información,se  utilizan  para  reconocer  patrones,  incluyendo  imágenes,  manuscritos  y  
secuencias de tiempo (por ejemplo: tendencias financieras). 

Tienen capacidad de aprender y mejorar su funcionamiento. 
Una  primera  clasificación  de  los  modelos  de  redes  neuronales  podría  ser,  
atendiendo a su similitud con la realidad biológica: 
1)  El modelo de tipo biológico. Este comprende las redes que tratan de simular 
los sistemas neuronales biológicos, así como las funciones auditivas o algunas funciones 
básicas de la visión. 
2)   El  modelo  dirigido  a  aplicación.  Este  modelo  no  tiene  por  qué  guardar  
similitud  con  los  sistemas  biológicos.  Su  arquitectura  está  fuertemente  ligada  a  las  
necesidades de las aplicaciones para la que es diseñada. 

----

## __Proceso de Markov__
Realizado por: Marco Leon Rios
----
Un proceso de Markov es un tipo especial de proceso estocástico que describe la evolución de un sistema de variables aleatorias con la particularidad de que la valor de la probabilidad de un estado depende solamente del valor de la probabilidad del estado anterior.

Mas formalmente, para el caso discreto:
+ Un proceso de Markov, usualmente llamado Cadena de Markov, está definido por:
1. Un conjunto de estado $$\ S = \{1,..., n\}$$
2. Un conjunto de posibles transiciones, a saber, los pares $$(i, j)$$ para los cuales $$p_{ij} > 0$$, y,
3. Los valores numéricos para los cuales $$p_{ij}$$ son positivos.
+ El proceso de Markov definido por una colección de variables aleatorias $$X_{0}, X_{1},...,X_{n},...,$$ que toman valores de $$S$$ y que satisfacen

$$\ P(X_{n+1} = j | X_{n} = i, X_{n-1} = i_{n-1},..., X_{0} = i_{0}) = p_{ij}$$

Para los estados $$i,j \in S$$ y las posibles secuenvias $$i_{0},..., i_{n+1}$$ de esos estados.

El rango de aplicación del modelo de Markov es extenso. Uno de ellos es el **aprendizaje por reforzamiento**.


## Aprendizaje por reforzamiento

Área del **Machine Learning** que toma ideas del conductismo en las cuales se determina las acciones que debe escoger un programa para obtener el mayor estimulo positivo de parte del entorno.

La situación donde el "estimulo" del ambiente depende, en una cierta medida mas no en toda, de las acciones que el agente realiza en el estado anterior puede modelarse mediante un proceso estocástico de Markov debido a que la respuesta del ambiente depende, en cierta medida, de las acciones del agente.


----
