

#Boxplot: Distribucion de datos general 

#Quiero ver la distribucion del peso en un grupo de 100 estudiantes universitarios

Peso_estudiantes <- c(58, 62, 70, 65, 59, 72, 68, 55, 67, 63, 75, 61, 57, 69, 71, 64, 56, 66, 73, 60,
                      78, 62, 59, 71, 65, 57, 69, 73, 61, 58, 70, 64, 56, 68, 72, 63, 75, 60, 59, 71,
                      65, 57, 69, 73, 61, 58, 70, 64, 56, 68, 72, 63, 75, 60, 59, 71, 65, 57, 69, 73,
                      61, 58, 70, 64, 56, 68, 72, 63, 75, 60, 59, 71, 65, 57, 69, 73, 61, 58, 70, 93,
                      56, 68, 72, 63, 75, 60, 59, 71, 65, 57, 69, 73, 61, 58, 70, 64, 56, 90)


#Boxplot sencilla 

boxplot(Peso_estudiantes)

# Si quiero agregar color

# 1 puedes ponerle el nombre del color (en ingles) o poner directamente el codigo del color

boxplot(Peso_estudiantes, col = "pink")

boxplot(Peso_estudiantes, col = "#c433ff")

# 2 puedes generar mezcla de colores con la intensidad de colores primarios rojo, verde y azul con el comando rgb y tambien agregar con ese comando su transparencia

boxplot(Peso_estudiantes,col = rgb(0.5,0.3,0.5,alpha = 0.5)) # los numeros corresponden a que intensidad quiero el rojo, verde y azul



## Cambiar el color de los bordes

boxplot(Peso_estudiantes, col = rgb(0.5,0.3,0.5,alpha = 0.5),border = 6)


## Si quiero agregar intervalo de confianza usamos: notch


boxplot(Peso_estudiantes, col = rgb(0.5,0.3,0.5,alpha = 0.5), border = 6, notch = TRUE)


### Si quiero que mi caja de bigote este horizontal 

boxplot(Peso_estudiantes, col = rgb(0.5,0.3,0.5,alpha = 0.5), border = 6, notch = TRUE, horizontal = T)


#### Que pasa si quiero editar cada parte de mi grafico

### Personalizar la caja 

boxplot(Peso_estudiantes,
        boxwex = 0.3, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 6,   # Color del borde de la caja,
        boxfill = rgb(0.5,0.3,0.5, alpha = 0.5), # Color de fondo de la caja
        notch = TRUE)   

#### Personalizar los bigotes con lo que ya teniamos de la caja


boxplot(Peso_estudiantes,
        #personalizar caja
        boxwex = 0.3, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 6,   # Color del borde de la caja,
        boxfill = rgb(0.5,0.3,0.5, alpha = 0.5), # Color de fondo de la caja
        notch = TRUE,
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "purple",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "#ff0080")


### Personalizar valores atipicos

boxplot(Peso_estudiantes,
        #personalizar caja
        boxwex = 0.3, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 6,   # Color del borde de la caja,
        boxfill = rgb(0.5,0.3,0.5, alpha = 0.5), # Color de fondo de la caja
        notch = TRUE,
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "purple",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "#ff0080",
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6)   # Color de fondo (pch 21 a 25)



#### Agregar titulo

boxplot(Peso_estudiantes,
       
        #personalizar caja
        boxwex = 0.3, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 6,   # Color del borde de la caja,
        boxfill = rgb(0.5,0.3,0.5, alpha = 0.5), # Color de fondo de la caja
        notch = TRUE,
        
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "purple",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "#ff0080",
        
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6,   # Color de fondo (pch 21 a 25)
        
        #agregar titulo principal y a ejes
        main= "Distribución de peso",
        xlab= "Universitarios",
        ylab="Peso",
        cex.lab=1.3, # tamano de letra de ejes
        col.lab= 4)


#ajustar margen para que se vean mejor mis ejes con funcion "par

par(mar=c(5,5,4,2)) # c(bottom, left, top, right

### Volver a correr el grafico para que se acomode al margen




################### Si quiero hacer un boxplot por grupo  


##Ejemplo murcielagos 


#Quiero comparar la tasa metabolica entre diferentes subfamilias de murcielagos 


Subfamilia <- c("Desmodontinae", "Desmodontinae", "Desmodontinae", "Stenodermatinae", "Stenodermatinae", "Stenodermatinae", "Stenodermatinae", "Stenodermatinae", "Stenodermatinae", "Stenodermatinae", "Rhinophyllinae", "Carollinae", "Carollinae", "Glyphonycterinae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Glossophaginae", "Phyllostominae", "Phyllostominae", "Phyllostominae", "Phyllostominae", "Phyllostominae", "Phyllostominae", "Phyllostominae", "Lonchorhininae", "Lonchophyllinae", "Micronycterinae", "Micronycterinae", "Macrotinae", "Macrotinae")

Tasa_metabolica <- c(33.9, 34.0, 26.8, 56.5, 86.4, NA, NA, 32.19, 39.9, NA, 16.2, NA, 30.265, NA,NA,28.1, NA, NA,NA,NA,36.69,44,NA,NA,NA,NA,34.5,NA,101.86, NA, NA,NA,NA, NA,NA,NA,14.6)

Datos <- data.frame( "Subfamilia" = Subfamilia ,
                       "Tasa_metabolica" = Tasa_metabolica)


#Caja de bigote

boxplot(Datos$Tasa_metabolica~Datos$Subfamilia, na.rm=T)

# de hecho podemos usar la funcion attach para no estar usando el signo de $ por cada columna que quiera analizar

attach(Datos)

# agregar color por cada grupo 

boxplot(Tasa_metabolica~Subfamilia, na.rm=T, col= c("blue","orange","red","grey","pink","darkgreen","brown"))


# si queremos quitar el attach usamos

detach(Datos)



### para editar las cajas 

boxplot(Tasa_metabolica~Subfamilia, 
        na.rm=T, 
        col= c("blue","orange","red","grey","pink","darkgreen","brown"),
        #personalizar caja
        boxwex = 0.4, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 1,   # Color del borde de la caja,
        
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "red",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "blue",
        
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6,   # Color de fondo (pch 21 a 25)
        
        #agregar titulo principal y a ejes
        main= "Distribución de la tasa metábolica",
        xlab= "Subfamilia",
        ylab="ml O2·h–1",
        cex.lab=1.3, # tamaño de letra de ejes
        col.lab= 1 )


#ajustar margen para que se vean mejor mis ejes con funcion "par

par(mar=c(5,5,4,2)) # c(bottom, left, top, right

### Volver a correr el grafico para que se acomode al margen



## Que pasa si quiero hacer otras boxplot usando otras variables 

# cuando hacemos mas de una caja de bigote generalmente nuestros datos estan en un excel que R puede leer pero por lo general las bases de datos utilizan archivos .csv 

#usaremos la base de datos de murcielagos, para importar usamos

Datos <- read.csv("Base_murcielagos_prueba.csv", header = T, sep = ",")


#### ahora hagamos las cajas de bigotes con la svariables que quiero 

### Usando la variable longevidad 
boxplot(Datos$Longevidad..Años.~Datos$Subfamilia, 
        na.rm=T, 
        col= c("blue","orange","red","grey","pink","darkgreen"),
        #personalizar caja
        boxwex = 0.4, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 1,   # Color del borde de la caja,
        
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "red",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "blue",
        
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6,   # Color de fondo (pch 21 a 25)
        
        #agregar titulo principal y a ejes
        main= "Distribución de la longevidad",
        xlab= "Subfamilia",
        ylab="Años",
        cex.lab=1.3, # tamaño de letra de ejes
        col.lab= 1 )


### Usando la variable indice de especializacion 


boxplot(Datos$Índice.especialización~Datos$Subfamilia, 
        na.rm=T, 
        col= c("blue","orange","red","grey","pink","darkgreen","brown","skyblue","yellow", "green","purple"),
        #personalizar caja
        boxwex = 0.4, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 1,   # Color del borde de la caja,
        
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "red",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "blue",
        
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6,   # Color de fondo (pch 21 a 25)
        
        #agregar titulo principal y a ejes
        main= "Distribución de la especialización",
        xlab= "Subfamilia",
        ylab="Nivel de specialización",
        cex.lab=1.3, # tamaño de letra de ejes
        col.lab= 1 )


### Usando la variable tasa metabolica

boxplot(Datos$Tasa.metabolica.basal..ml.O2.h.1~Datos$Subfamilia, 
        na.rm=T, 
        col= c("blue","orange","red","grey","pink","brown","aquamarine4"),
        #personalizar caja
        boxwex = 0.4, # Ancho de la caja
        boxlty = 1,   # Tipo de línea de la caja
        boxlwd = 2,   # Ancho de línea de la caja
        boxcol = 1,   # Color del borde de la caja,
        
        # personalizar bigotes
        whisklty = 2,       # Tipo línea bigotes
        whisklwd = 2,       # Ancho línea bigotes
        whiskcol = "red",   # Color bigotes
        staplelty = 2,      # Tipo línea barras
        staplelwd = 2,      # Ancho línea barras
        staplecol = "blue",
        
        # personalizar datos atipicos
        outpch = 23, # Símbolo pch para los atípicos
        outcex = 1.5,  # Tamaño de los atípicos
        outcol = 6,  # Color
        outbg = 6,   # Color de fondo (pch 21 a 25)
        
        #agregar titulo principal y a ejes
        main= "Distribución de la tasa metábolica",
        xlab= "Subfamilia",
        ylab="ml O2·h–1",
        cex.lab=1.3, # tamaño de letra de ejes
        col.lab= 1 )


### Ahora que pasa si quiero que mis graficos esten en una sola imagen

#usamos la funcion # par(mfcol = c(2, 2)) o par(mfrow = c(2, 2))
# usemos por columna 

par(mfcol = c(2, 2))

## Corremos nuestros graficos nuevamente

## que paso???

#se colocaron mis graficos y se ven pero el comando que le di suele usarse cuando quiero cuatro graficos

# podre ajustar mi hoja para graficos que yo quiera?
# la respuesta es SI, se pueden hacer composiciones complejas con la funcion layout

# para comenzar primero 
# Volvemos al estado original
par(mfrow = c(1, 1))

#layout divide la ventana gráfica en una cuadrícula de filas y columnas. 
#por medio de una matrix decirle cuantos renglones y columnas va ocupar mi grafico

margen_3_graficos <- layout(matrix(c(1, 2,  # Primero, segundo
                                     3, 3), # y tercer gráfico
                                     nrow = 2,
                                     ncol = 2,
                                     byrow = TRUE))

# ahi le estamos diciendo que el primer grafico va en la columna 1 renglon 1, el grafico dos en la columna 2 renglon 1 y el tercer grafico en la columna 1 y 2 en el renglon 2


### ahora despues de configurar corremos nuestros graficos 

