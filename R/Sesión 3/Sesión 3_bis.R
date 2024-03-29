#=================================================================================

# ESTAD�STICA DESCRIPTIVA

#=================================================================================

# OBJETIVO: El objetivo de esta secci�n es hacer inferencia de los
#           datos a partir de medidas de tendencia central

#=================================================================================

#CONTENIDO

#0. Preparar el entorno de trabajo
#1. Importar datos
#2. Descripci�n de la base 
#3. Subconjuntos (hombres y mujeres)
#4. Medidas de tendencia central
#5. Gr�ficas (ggplot)
#6. Markdown


#PREGUNTAS DE INVESTIGACI�N:

#1. �Quienes estudian m�s, los hombres o las mujeres?
# H0:

#2. �Los j�venes estudian m�s que los adultos?
# H0:


#=================================================================================


#0. Preparar el entorno de trabajo

#Antes de iniciar a trabajar en **R** conviene limpiar el entorno de trabajo 



    #0.1. Instalar paquetes
    
    #Par dar inicio al an�lisis conviene preguntarse �qu� tipo de analisis se va a llevar a cabo?
    #�se van a hacer an�lisis estad�stico?, �se har�n gr�ficas?
    



    
    #0.2. Cargar librer�as: base, foreign, questionr, ggplot, stats, dplyr
    

    
    #0.3. Directorio de trabajo
    

#=================================================================================
    
        
#1. Importar datos.     
# Ayuda 1: Recuerda utilizar la funci�n read.dbf
# Ayuda 2: Nombra a la base enigh

    
#=================================================================================
    

#2. Descripci�n de la base
# Ayuda: Verifica el nombre de las variables


#=================================================================================


#3. Subconjuntos (hombres y mujeres) 

    #3.1 Convertir a num�rico las variables a utilizar: hor_2, sexo y eda
    # Ayuda 1: Convierte en caracter y luego en num�rico.
    # Ayuda 2: Recuerda decirle a R el nombre de la base y la variable ($)
    
        



    #3.2 Hacer una base para hombres y otra para mujeres
    # Ayuda1: Recuerda quienes van antes de la coma: [casos o filas , variables o columnas ]
    # Ayuda2: A la base de hombres nombrala "enigh_h" y a la de mujeres "enigh_m"    



#=================================================================================

#4. Medidas de tendencia central

    
    #4.1 Promedio
        
    mean(enigh_h$hor_2, na.rm = TRUE)
    mean(enigh_m$hor_2, na.rm = TRUE)
    
    #4.2 Mediana
    
    median(enigh_h$hor_2, na.rm = TRUE)
    median(enigh_m$hor_2, na.rm = TRUE)
    
    #4.3 M�nimo
    
    min(enigh_h$hor_2, na.rm = TRUE)
    min(enigh_m$hor_2, na.rm = TRUE)
    
    #4.4 M�ximo
    
    max(enigh_h$hor_2, na.rm = TRUE)
    max(enigh_m$hor_2, na.rm = TRUE)
    
    #4.5 Desviaci�n est�ndar
    
    sd(enigh_h$hor_2, na.rm = TRUE)
    sd(enigh_m$hor_2, na.rm = TRUE)
    
    
    #4.6 Cuartiles
    
    quantile(enigh_h$hor_2, na.rm = TRUE)
    quantile(enigh_m$hor_2, na.rm = TRUE)

    #4.7 Correlacion
    
    cor(enigh_m$hor_2,enigh_m$eda,method = "pearson")
    
        #4.7.1 Quitar valores perdidos
        
        enigh_m2<-enigh_m[!is.na(enigh_m$hor_2),]
        
        #4.7.2 Correlacion
        
        cor(enigh_m2$hor_2,enigh_m2$eda,method = "pearson")
    
    
    
#=================================================================================

#5. Gr�ficas (ggplot)
    
#5.1 Gr�fica simple
    
ggplot(enigh,aes(sexo))+geom_bar(fill="blue")

#5.2 Gr�fica con dise�o

ggplot(enigh,aes(sexo))+geom_bar(fill="blue")+
    xlab("Sexo de las personas")+
    ylab("Numero de personas")+
    ggtitle("Comparaci�n entre hombres y mujeres")


