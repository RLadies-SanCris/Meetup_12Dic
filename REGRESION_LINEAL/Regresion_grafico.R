### Regresion lineal en R

### Datos con las variables que queremos evaluar

#En este caso nos apoyaremos de los datos base que tiene R

# para ver las bases de R usamos 
data()


## usaremos la base 
data("mtcars")
## para saber sobre los datos de esta base de datos usamos 

?mtcars

#Esta base la usaremos para ver el consumo de combustible (Mpg) depende del peso de carro

## Definir nuestra variable dependiente (y) y variable independiente (x)

x <- mtcars$wt

y <- mtcars$mpg



### Hacer nuestro modelo lineal (Regresion lineal)

modelo <-  lm(y ~ x)
summary(modelo)


# Gráfico de dispersión 
plot(x, y, pch = 16, col="blue")


#Agregar nuestro modelo lineal al grafico

abline(modelo, col = "red", lwd = 3)



# Si queremos cambiar el nombre de nuestras etiquetas 

plot(x, y, pch = 16, col="blue",
     xlab = "Weight",
     ylab = "mpg",
     col.lab= "gray")#color de las etiquetas

# Cada que cambiemos el grafico debemos colocar la linea nuevamente
abline(modelo, col = "red", lwd = 3)

## Si quieres eliminar la caja del grafico y añadir los ejes usamos 

plot(x, y, pch = 16, col="blue",
     main = "Regresion lineal", #titulo principal
     col.main= "blue",#color titulo principal
     xlab = "Weight",
     ylab = "mpg",
     col.lab= "red",#color de las etiquetas
     axes = FALSE, # elimina toda la caja
     abline(modelo, col = "red", lwd = 3)) 

#añade eje x
axis(1)

# le podemos poner color a las lineas marcas y etiquetas del eje X

axis(1,
     col = "blue",        # Color línea ejes
     col.ticks = "green", # Color marcas ejes
     col.axis = "red")    # Color de las etiquetas


#añade eje y
axis(2) 

# para agregar colores a lineas, marcas y etiquetas del eje Y

axis(2, 
     col = "blue",        # Color línea ejes
     col.ticks = "green", # Color marcas ejes
     col.axis = "red")    # Color de las etiquetas







#####  Residuos entre el valor real y el estimado #####


segments(x0 = x, x1 = x, y0 = y, y1 = predict(modelo),
         lwd = 1, col = "red") #lwd grosor de la linea

# segments: se encarga de dibujar los segmentos de línea.

#x0 y x1 = x: Indica la coordenada x del punto de inicio y final de cada segmento. Como x1 es igual a x0, los segmentos serán líneas verticales.

#y0 = y: Indica la coordenada y del punto de inicio de cada segmento. Corresponde al valor observado de y para cada punto de datos.

#y1 = predict(modelo): Indica la coordenada y del punto final de cada segmento. Aquí se calcula el valor predicho de y utilizando el modelo que se ha creado.

#Predict: realizar predicciones basadas en un modelo que ya has ajustado a tus datos


###### INTERVALOS DE CONFIANZA #####

# Obtener solo los intervalos de confianza
intervalos <- predict(modelo, interval = "confidence")
lines(mtcars$wt, intervalos[,3], col = "blue", lty = 3)#limite superior
lines(mtcars$wt, intervalos[,2], col = "blue", lty = 3) #Limite 


#margen
par(mar=c(5,5,4,2)) # c(bottom, left, top, right


# Si queremos agregar texto (nuestra ecuacion)
# Texto
coef <- round(coef(modelo), 2) # round es para redondear los numeros a 2 decimales
coef # x es la pendiente 
text(4.5, 25,  paste("Y = ", coef[1], "+", coef[2], "x"))



### Ya tenemos nuestra regresion lineal pero para corrobar si ademas de que la variable x influye en y podemos conocer si estas estan relacionadas y la fuerza de esa relacion haciendo una prueba de correlacion



### La correlacion nos dice el grado de relacion entre dos variables mientras que la regresion lineal consiste en generar una ecuación (modelo) basado en la relación existente entre ambas variables y permita predecir el valor de una a partir de la otra.


################### CORRELACION

#Antes de hacer una correlacion es necesario saber si nuestros datos tienen una distribucion normal 

#hipotesis 
#Ho: La muestra presenta una distribucion normal
#Ha: La muestra no presenta una distirbucion normal 

## la prueba de normalidad es la  Prueba de Shapiro-Wilk 
# es necesario hacer la prueba en la variables que se usaran para la correlacion

shapiro.test(x)
shapiro.test(y)

##ambas presentan una distribucion normal por lo tanto la prueba para hacer la correlacion es la Pearson
## si mis datos no tuvieran una distribucion normal se recomienda la correlacion de Spearman

## En este caso usaremos la correlacion de Pearson 


cor.test(x,y)

