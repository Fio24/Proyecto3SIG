# Documentación Proyecto 2 - Sistemas de Información Geográfica

Instituto Tecnológico de Costa Rica \
Sede: Campus Tecnológico Central Cartago \
Escuela de Ingeniería en Computación \
Curso: Sistemas de Información Geográfica \
Tercer Proyecto \
Profesor: Armando Arce \
Fecha de entrega: 27/11/2022 \
Segundo Semestre 2022 \
Estudiantes: 
- Fiorella Vanessa Arias Arias (2020023639)
- Daniel Bejarano Alfaro(2020425953) 


- - -

Link del mapa: https://fio24.github.io/Proyecto3SIG/ \
Link del github con todos los archivos respectivos: https://github.com/Fio24/Proyecto3SIG


## Proceso de generación del Mapa
De imagen base se tiene un mapa de Costa Rica de colores de aspecto. Dicho mapa se generó mediante interpolación a partir del archivo de geo_hitoz.zip. 
Para las capas de poligonos,se utilizaron mapas de provincias, cantones y distritos. Luego para las capas de lineas, se utilizaron los archivos de carreteras y rios. En último lugar, para los elementos puntuales, consisten en las capas de escuelas, hospitales, poblados, clinicas, gasolineras, hoteles y agencias bancarias. 

Es importante recalcar que no todos los archivos de datos traían una columna con la provincia respectiva para el fácil filtrado al importart a Tilemill. Por lo tanto, los archivos que no tenían dicha columna, se filtraron en grass. Primero, con el comando **v.exctract** se aisló la provincia de Guanacaste del archivo geo_provincias,shp. Esto nos permite tener el poligono de Guanacaste solo, luego con el comando v.select y el option **operator=within** pudimos filtrar los elementos y crear un nuevo mapa vectorial con únicamente aquellos dentro de Guanacaste.


## Detalles
Las lineas del poligono de la provincia de Guanacaste tienen un color #255 y aparacecen cuando el nivel de zoom es 8 o 9.

Las lineas de los poligonos de cantones tienen un color de  #0000FF y aparecen cuando el nivel de zoom es 9 o 10.

Las lineas de lo poligonos de distritos tienen un color de #000 y aparecen cuando el nivel de zoom es Mayor que 10. Con el grosor de la linea cambiando si es menor o mayor que 12.

Las carreteras NACIONALES tienen un color de #b88b5c y aparecen con un nivel de zoom de 12 o 13.
Las carreteras CANTONALES tienen un color de #908c44 y aparacen con un nivel de zoom de 12 o 13.
Cuando el zoom es mayor a 13, Carreteras NACIONALES tienen un color de #8d4925 y Carreteras CANTONALES tienen un color de #908c44.

Los rios tienen un color de #bceeff y aparecen con un nivel de zoom de 12 o 13. Cuando el zoom es mayor a 13, el color es #168.

Todos los elementos puntuales aparecen con iconos en niveles de zoom entre 11 y 14.
Cuando el zoom es mayor a 14, se muestra el nombre exacto del elemento puntual.
