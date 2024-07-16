# Introducción
Se presenta un análsisis de datos de una empresa de telecomunicaciones que tiene como objetivo buscar oportunidades de mejora en su servicio de internet, en este repositorio existen 4 rubros que a continuación se van a explicar.
### -CSV 
Carpeta que contiene los archvivos que se trabajaron, estos archivos ya están limpios y normalizandos, estos dos procesos se hicieron en python con la librería pandas.
### -Dashboard_PI_2.pbix
Este archivo es el informe realizado en Power BI, en donde se encuentra el dashboard interactivo que muestra los ingresos a través de los años, comparativa a través del tiempo de accesos a internet por hogar y por persona, tecnologías usadas y velocidades de internet, se visualizan 3 métricas que son: Ingresos totales, Promedio de velocidad en Mbps, Suma de acesos a internet; todo esto mencionado es interactivo mediante el botón "Provincia" en donde se puede ver toda esta información dependiendo si se quiere una vista general o por provincia. Aunado a esto, se encuentra la implementación de 4 KPI´s con sus respectivas gráficas, cabe mencionar que, estos KPI´s al ser implementados por primera vez se encuntran por debajo del objetivo, estos KPI´s son: 
1.- Aumentar en 2% la cantidad de hogares con acceso a internet.
2.- Aumentar en 5% el uso de fibra óptica.
3.- Aumentar en 5% el uso de velocidad de +30 Mpbs.
4.- Aumentar en 2% la cantidad de personas con acceso a internet.
### -DataBase.sql
Contiene un script de SQL realizado en MySQL en donde se levantó una base datos con los CSV mencionados, se hizo una conexión mediante primary keys con las columnas de provincias.
### EDA_PI2.ipynb
Este es el archivo principal, es de tipo Notebook en donde se hizo limpieza, normalización, detección de outliers, análisis con gráficos, detección de insights y conlsuiones de todo el Análisis Exploratorio de Datos (EDA)

# Reporte de análsis
Mediante una gráfica de líneas, se presentan los ingresos del año 2014 a 2023, donde se observa un aumento exponencial, se incrementaron los ingresos en 3700%, lo que es directamente proporcional al aumento en los acceso a internet que aumentaron en 90%, si bien es cierto que que las diferencias son enormes, mucho tiene que ver el precio del acceso al mismo.
En cuanto al uso de tecnologías, Cablemodem cobró relevancia junto con Fibra óptica, mientras que ADSL fue en descenso, esto se puede deber a las facilidades de instalación y mejor velocidad. Por último, la velocidad de +30 Mnps es la más uasada recientemente, seguido de de 10 Mbps - 20 Mbps, y se observa un comportamiento regular en la velocidad de 6 Mbps - 10 Mbps, que nos indica que a pesar de la presencia de mejores velocidades, sigue siendo una de las preferidas y/o más distribuidas.
Pasemos con los KPI´s, se usaran las medidas de promedio para la implementación de KPI´s, esto debido a que suele reflejar un valor más equitativo y comprender mejor el comportamiento. Dicho lo anterior, en las gráficas se observa que ciertas provincias muestran mucho mayor promedio en los 4 indicadores mientras que hay otras que muestran valores mínimos, nos habla de una disparidad entre provincias, se establecieron metas de porcentajes bajos, primero, por ser la primera vez que se implementa esta cultura, segundo, para llevar a cabo medidas (mencionadas en el archivo EDA_PI2, sección Conclusiones) que puedan ayudar a elevar los valores de Provincias que no tienen tanto impacto en este análisis, y tercero, porque son indicadores reales que debido a la alza en ingresos, accesos y demanda de los útlimos años, pueden ser alcanzados en el trimestre. 
Para finalizar, se observaron las siguientes medidas:
a) En el 2023, la población en Argentina fue de 46.044 millones de personas y se registaron 347 miilones de accesos a internet, es decir que cada persona puede tener 7.53 accesos a internet.
b) En 2020, se registraron 62.12 millones de conexiones, tomando los 347 millones, hubo un incremento del 9%













