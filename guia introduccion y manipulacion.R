## Importar datos
### Carpeta actual de trabajo actual:
getwd()

wine_A = read.csv("G:/Mi unidad/MDS/2. Programación con R/datos/winequality-red.csv", sep=';', dec = '.')
wine_B=readr::read_delim("G:/Mi unidad/MDS/2. Programación con R/datos/winequality-red.csv",   delim = ";", escape_double = FALSE, trim_ws = TRUE)

head(wine_A)
head(wine_B)

colnames(wine_A)

# Estructura de datos
str(wine_A) 

# Dimensión del objeto
dim(wine_A)

### Filtros

## PH menor a 3.2

head(wine_A$pH<3.2)

table(wine_A$pH<3.2)

## Densidad de los registros con PH menor a 3.2

wine_A$density[wine_A$pH<3.2]

## Densidad de los registros con PH menor a 3.2 y alcohol superior a 12

wine_A$density[wine_A$pH<3.2 & wine_A$alcohol>12]

## Promedio de PH

mean(wine_A$pH)

## Resumen del objeto

summary(wine_A)

