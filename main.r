# Estefanía Ruiz Cuartas
# Lenguaje de programación: R
# Tema: Manejo de archivos .csv en R
# Fuentes de consulta:  https://www.tutorialspoint.com/r/r_csv_files.htm  https://datatofish.com/export-dataframe-to-csv-in-r/

# Archivos .csv: El archivo csv es un archivo de texto en el que los valores de las columnas están separados por una coma
cat("\n
Archivo csv
\n")

# Ejercicio 1: empresa1.csv
cat("\n
- Ejercicio 1: documento empresa1.csv
\n")

cat("\n")
# En primera instancia es necesario hacer el llamado de leer el archivo csv, esto se hace con la función read.csv()
doc1 <- read.csv("empresa1.csv")

# Mostraremos en la consola el contenido de este archivo
print(doc1)

cat("\n")
# Veremos que esta información aparece almacenada en forma de dataframe
cat("\n 
Es un dataframe? : \n")
print(is.data.frame(doc1))

# En vista que es un dataframe, verificaremos la cantidad de filas y columnas del mismo

cat("\n")
cat("\n")
# Número de filas
cat("\n 
Número de filas del dataframe: \n")
print(nrow(doc1))

cat("\n")
cat("\n")
# Número de columnas
cat("\n 
Número de columnas del dataframe: \n")
print(ncol(doc1))

cat("\n")
cat("\n")
# Para una reunión deben extraerse solamente los gerentes que se encuentran en el dataframe, sin embargo, se solicitó que se tuviesen en cuenta solo aquellos mayores de 38 años para hacerles entrega de un reconocimiento
cat("\n 
Gerentes mayores de 38 años para entregar reconocimientos: 
\n")

# Para esto se requiere el uso de la función subset() que permite extraer una información específica. Mostraremos lo obtenido
ger_edad <- subset(doc1, edad >38 & cargo =="gerente")
print(ger_edad)

# Sin embargo, para una reunión se debe tener registro de todos los gerentes sin importar la edad, y además el personal de producción que esté mencionado en el archivo empresa1.csv. Esta información debe ir almacenada en un archivo csv a parte del que se tiene por ahora, para tener la información de manera más fácil.

# Para esto crearemos un nuevo csv, esto lo hacemos con la función write.csv(), donde pondremos la información que esperamos almacenar y en dónde la almacenaremos, en este caso, el documento donde guardaremos la información de los gerentes, se llamará ger_pro_empresa1.csv

# Primero se creará la variableque contendrá  todos los gerentes y empleados del área de producción. Se  hace uso de la función subset(),y usamos 'or(|)' para que nos muestre los empelados de producción y los gerentes
ger.pro_emp1 <- subset(doc1, area_trabajo == "produccion" | cargo =="gerente")

cat("\n")
cat("\n")
# Mostraremos la información anterior antes de alamacenarla en un csv.
cat("\n 
Gerentes y empleados de producción: 
\n")
print(ger.pro_emp1)

# En vista que tenemos la información correcta y necesaria según los requisitos presentados, podremos ponerla en el csv
write.csv(ger.pro_emp1,"ger_pro_empresa1.csv",row.names = FALSE)

# Línea separadora de temas
cat("\n",
"\n")
cat("-------------------------------------------------------------------")
cat("\n")
cat("\n")

# Ejercicio 2: zoo1.csv
cat("\n
- Ejercicio 2: documento zoo1.csv
\n")

cat("\n")
# En primera instancia es necesario hacer el llamado de leer el archivo csv, esto se hace con la función read.csv()
doc2 <- read.csv("zoo1.csv")

# Mostraremos en la consola el contenido de este archivo
print(doc2)

cat("\n")
# Veremos que esta información aparece almacenada en forma de dataframe
cat("\n 
Es un dataframe? : \n")
print(is.data.frame(doc2))

# En vista que es un dataframe, verificaremos la cantidad de filas y columnas del mismo

cat("\n")
cat("\n")
# Número de filas
cat("\n 
Número de filas del dataframe: \n")
print(nrow(doc2))

cat("\n")
cat("\n")
# Número de columnas
cat("\n 
Número de columnas del dataframe: \n")
print(ncol(doc2))

cat("\n")
# Veremos que esta información aparece almacenada en forma de dataframe
cat("\n 
Es un dataframe? : \n")
print(is.data.frame(doc1))

cat("\n")
cat("\n")
# Se solicitó al dueño del zoo conocer la información del animal que tiene mayor cantidad animales
cat("\n 
Información del animal que tiene mayor cantidad en el zoo:
\n")

# Para esto necesitamos la función max()
zoo_max <- subset(doc2, cantidad == max(cantidad))
print(zoo_max)

cat("\n")
cat("\n")
# También se solicitó mostrar la información de los animales que en cantidad eran superiores a 4
cat("\n 
Información de animales que tienen más de 4 en el zoo:
\n")

# Para esto necesitamos la función max()
zoo_four <- subset(doc2, cantidad>4)
print(zoo_four)

# Por último, el dueño del zoo pidió separar de toda la información, aquellos animales de alimentación herbívora, ya que necesita saber sobre ellos y realizar una mejor cotización con el proveedor de alimentos
zoo_herbi <- subset(doc2,alimentacion=="herbívoro")

cat("\n")
cat("\n")
# Mostraremos la información anterior antes de alamacenarla en un csv.
cat("\n 
Animales herbívoros del zoo: 
\n")
print(zoo_herbi)

# Para esto crearemos un nuevo csv, esto lo hacemos con la función write.csv(), donde pondremos la información que esperamos almacenar y en dónde la almacenaremos, en este caso, el documento donde guardaremos la información de los animales herbívoros, se llamará herbivoro_zoo1.csv

# En vista que tenemos la información correcta y necesaria según los requisitos presentados, podremos ponerla en el csv
write.csv(zoo_herbi,"herbivoro_zoo1.csv",row.names = FALSE)

