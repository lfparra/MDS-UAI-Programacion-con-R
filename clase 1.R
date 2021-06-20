#Ejercicio 1
2 + 4 * 5 - exp(3)

#Ejercicio 2
log(5) + pi / sqrt(12)

#Ejercicio 3
#Programación orientada a objetos
datos = c(3,4,5,6,7,8)
mean(datos)

#Objetos creados
ls()

#Ejercicio 4
#Ecuación de segundo grado
# ax^2 + bx + c = 0

A = 1
B = - 5
C = 6

(-B + sqrt(B^2 - 4*A*C))/(2*A)
(-B - sqrt(B^2 - 4*A*C))/(2*A)

#Ejercicio 5

A = 2
B = 5
C = 6
  
(-B + sqrt(B^2 - 4*A*C))/(2*A)
(-B - sqrt(B^2 - 4*A*C))/(2*A)

#Remover objetos

rm(A)
rm(B)
rm(list=ls())

#Creación de objetos

#Vector
objeto1 = c(3,4,5,6,7,8)
mean(objeto1)


a1 = c(3.5, 4, 5)
a2 = c(6, 7)
a3 = 8

objeto2 = c(a1, a2, a3)

paste('El promedio del objeto es', mean(objeto1))

objeto1 + objeto2



######################################

## Importar datos
### Carpeta actual de trabajo actual:
getwd()

## Modificar la carpeta de trabajo:
setwd('G:/Mi unidad/MDS/2. Programación con R/')

### Lectura de datos

## Excel
library(readxl) ##Llamado del packages
tarjetas_xlsx = read_excel("G:/Mi unidad/MDS/2. Programación con R/datos/TARJETAS_DEB.xlsx")

## CSV
library(readr) ##Llamado del packages
tarjetas_csv = read_csv("G:/Mi unidad/MDS/2. Programación con R/datos/TARJETAS_DEB.csv")

## json
library(jsonlite) ##Llamado del packages
tarjetas_json = fromJSON("G:/Mi unidad/MDS/2. Programación con R/datos/TARJETAS_DEB.json")

## Manipulación de objetos

head(tarjetas_xlsx)
head(tarjetas_json)

tail(tarjetas_xlsx)

dim(tarjetas_xlsx)

ncol(tarjetas_xlsx)

nrow(tarjetas_xlsx)

length(tarjetas_xlsx)

str(tarjetas_xlsx)
str(tarjetas_json)

class(tarjetas_xlsx)

names(tarjetas_xlsx)

## Manipulación de variables

is.data.frame(tarjetas_xlsx) #Pregunta si corresponde aun tipo de objeto
is.character(tarjetas_xlsx)
is.vector(tarjetas_xlsx) 

#as.character(tarjetas_csv) #Modifica el tipo de objeto

tarjetas_xlsx$MONTO_CLP ##Acceso a una columna específica

is.vector(tarjetas_xlsx$MONTO_CLP) ##Pregunta si una columna es un tipo de objeto
is.numeric(tarjetas_xlsx$MONTO_CLP)

colnames(tarjetas_xlsx) ## Ver nombre de todas las columnas

colnames(tarjetas_xlsx)[1] ## Acceder al nombre de una columna en específico 


## Resumen de Tipo

###Tabla de frecuencia absoluta
table(tarjetas_xlsx$TIPO)

### Tabla de frecuencia relativa (proporciones) opción 1
table(tarjetas_xlsx$TIPO)/length(tarjetas_xlsx$TIPO)

### Tabla de frecuencia relativa (proporciones) opción 2
prop.table(table((tarjetas_xlsx$TIPO)))

### Resumen del Monto en CLP
summary(tarjetas_xlsx$MONTO_CLP)

