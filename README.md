# Equipo-TeamBiriche-PE

Repositorio de documentos del Equipo 1 para la asignatura "Programación Estructurada" de la Facultad de Matemáticas (UADY) impartida por el Profesor Edgar Cambranes Martínez

### Equipo compuesto por:
+ Eyder Antonio Concha Moreno <br>
+ Jorge Chí León <br>
+ Luis Gerardo León Ortega <br>
+ Rodrigo Hernández Góngora <br>


***

# **Frugalist**

## Tabla de contenido

### 1. Introducción
- 1.1 Resumen
- 1.2 Relevancia
- 1.3 Público Objetivo

### 2. Definición de Proyecto
- 2.1 Metas y Objetivos
- 2.2 Definiciones

### 3. Plan de Proyecto
- 3.1 Investigación
- 3.2 Roles
- 3.3 Tareas

### 4. Requerimientos
- 4.1 Requerimientos de Usuario
- 4.2 Requerimientos de Sistema
  - 4.2.1 Funcionales
  - 4.2.2 No Funcionales

### 5. Proceso de Desarrollo
- 5.1 Herramientas
- 5.2 Métodos
- 5.3 Procesos

### 6. Trabajo en Equipo
- 6.1 Comunicación
- 6.2 Monitoreo de productividad
- 6.3 Calendario
- 6.4 Productos y Artefactos
 -6.5 Repositorio


### 7. Construcción
- 7.1 Ambiente operación
- 7.2 Lenguaje de programación
- 7.3 Estándar de Codificación
- 7.4 Herramienta para documentación

## 1. Introducción

### 1.1 Resumen
Frugalist es un servicio en el cual puedes consultar de forma sencilla y eficiente los precios de los diversos productos de la canasta básica en los distintos supermercados de tu localidad, esto tan simple como introducir el nombre del producto, o tomando una fotografía del mismo.

Frugalist te permite comparar el precio de una oferta al coste normal de un producto, precios individuales o todo tu carrito de compra en los supermercados más populares en tu localidad.

### 1.2 Relevancia
Actualmente no existe ningún servicio que permita comprobar el coste de un producto en diferentes supermercados de forma óptima, esto limitando a las personas a comprar con base a promociones, o recomendaciones personales, lo cual puede representa una compra ineficiente.

Frugalist pretende cambiar la forma en la que compramos, fomentando al desarrollo del hábito de una compra consciente y efectiva, de esta manera contribuyendo al ahorro económico y optimizado en el proceso de compra en supermercados de México por medio de una solución innovadora y moderna.

### 1.3 Público Objetivo
Cualquier persona entre los 14 y 40 años de edad que viva en una ciudad de México.


## 2. Definición del proyecto

## 3. Plan de Proyecto

## 4. Requerimientos

### 4.1 Requerimientos de usuario
- Los usuarios podrán visualizar y buscar el precio de productos de la canasta básica en los supermercados de su ciudad, la cual podrá ser identificada con el GPS de su teléfono móvil.
- Los usuarios podrán buscar un producto con una fotografía o con el nombre del mismo.
- Los usuarios podrán crear un carrito de compras con los productos deseados, cuyo precio, será comparado en los distintos supermercados de su ciudad.
- Los usuarios podrán filtrar los productos con base al supermercado de su elección.

### 4.2 Requerimientos de sistema
#### 4.2.1 Funcionales
1. RF001:
Título: Página principal
Prioridad: Alta
Descripción:
-Esté un usuario activo en la aplicación, la primera página que deberá ser mostrada es la página página principal. En esta página el usuario podrá buscar un producto de la canasta básica de productos en México de dos formas. Las formas de búsqueda siendo:
Introduciendo el nombre del producto deseado
Tomando una fotografía del producto
-El usuario podrá seleccionar el municipio en el que se encuentra como parámetro para la búsqueda.

2. RF002:
Título: Búsqueda por nombre de producto
Prioridad: Alta
Descripción:
El usuario podrá buscar un producto ingresando su nombre, o el de su presentación.


3. RF003:
Título: Búsqueda por fotografía
Prioridad: Alta
Descripción:
El usuario será capaz de tomar una fotografía del producto de la canasta básica, los productos deberán cumplir los siguientes requisitos:
El producto deberá tener el nombre de forma clara en la fotografía
De ser una fruta o verdura, el producto deberá estar ante una buena iluminación
Solamente un producto podrá estar en la fotografía

4. RF004:
Título: Resultado de búsqueda en lista
Prioridad: Alta
Descripción: 
-Los resultados de la búsqueda podrán ser visualizados en forma de lista en otra página. Cada producto en la lista deberá contar con la siguiente información:
Precio
Nombre de Presentación
Cadena Comercial
Dirección
-La máxima cantidad de productos en pantalla será de 5, de haber más, el usuario podrá scrollear para visualizar los demás.
-Los productos serán mostrados en orden de precio, de menor a mayor.
-Cada producto contará con un botón para ser añadido al carrito de compras del usuario
-Contará con un apartado en el cual se podrá seleccionar supermercados para filtrar los productos encontrados.

5. RF005:
Título: Carrito de compra
Prioridad: Media
Descripción:
-En toda pantalla se podrá seleccionar un botón de “carrito de compras”, el cual permitirá visualizar el coste total de los productos en la lista en los distintos supermercados donde los productos se encuentren disponibles.
-Los productos en el carrito de compras podrán ser seleccionados para visualizar la búsqueda de ese producto nuevamente.

#### 4.2.2 No Funcionales
Requerimientos de producto:
1. RNF001: Uso de memoria
Descripción: 
La cantidad de memoria ocupada por la aplicación:
-Ideal: no más de 20MB
-Planeado: no más de 50MB
-Debe: no más de 100MB

Definición MB: Megabyte

2. RNF002: Precisión de precios
Descripción
La exactitud de los precios con los supermercados reales:
-Todos los precios a mostrar deberán haber sido actualizados en los últimos 10 días.

3. RNF003: Productos aceptados para búsqueda
Descripción:
Los productos que podrán comprobarse en la aplicación son los siguientes:
-Todos los productos de la canasta básica (excluyendo los añadidos en 2019) establecidos por INEGI y SEDESOL

4. RNF004: Tiempo de petición de productos
Descripción:
El tiempo que la aplicación tardará en mostrar los productos:
-Ideal: no más de 1 segundo
-Planeado: no más de 2 segundos
-Debe: no más de 3 segundos

5. RNF005: Cantidad de supermercados
Descripción:
Los supermercados disponibles en la aplicación:
-Los supermercados en la lista del API de PROFECO

6. RNF006: Cantidad de productos
Descripción:
Los productos disponibles en la aplicación:
-Los productos en la lista del API de PROFECO que formen parte de la canasta básica Mexicana.

## 5. Proceso de desarrollo
### 5.1 Herramientas
#### 5.1.1 Herramientas de Requerimientos
- Asana
- Google Sheets
- Google Drive

#### 5.1.2 Herramientas de Diseño
- Figma
- Google Slides
- LucidChart (UML)

### 5.1.3 Herramientas de Construcción
- Git y Github
- Node Package Manager
- Profeco API
- Google Cloud Vision API
- Visual Studio Code
- React Native (Javascript)
- Expo
- Genymotion
- Smartphone

#### 5.1.4 Herramientas para Testing y Documentación
- Jest
- Docz

#### 5.1.5 Herramientas para Comunicación
- Slack


### 5.2 Métodos
#### 5.2.1 Gestión de Requerimientos
Estas herramientas serán utilizadas para la gestión y el control de requerimientos. Al igual que servirán para establecer un reporte del         progreso durante el desarrollo del proyecto.

a) Asana
Esta herramienta será utilizada para la calendarización y asignación de tareas con respecto al proyecto durante el transcurso del mismo, cubriendo de esta manera todas las áreas en han de ser realizadas en los diversos aspectos del proyecto.

b) Google Sheets
Será utilizada para la realización de un reporte del avance semanal de cada integrante con respecto a los requerimientos del proyecto.

c) Google Drive
Será utilizado para el almacenamiento de todo documento generado durante el transcurso del proyecto, de esta manera proporcionando un espacio para toda la documentación relacionada con el proyecto.

#### 5.2.2 Diseño
a) Figma
Se utilizará para la creación de Mock-ups de la interfaz de usuario, de esta forma proporcionando una idea general de la apariencia de la aplicación, la cual será usada como referencia para el desarrollo del apartado visual del proyecto.

b) Google Slides
Esta herramienta será utilizada para la elaboración de presentaciones relacionadas con el avance y explicación del proyecto ante una audiencia, de esta manera proporcionando un artefacto para la exhibición del proyecto.

c) LucidChart (UML)
Se utilizará para la creación de diagramas, los cuales facilitarán la comprensión de los diversos casos de uso del proyecto proporcionando otro medio para su visualización.

#### 5.2.3 Construcción
a) Git y Github
Serán utilizados para el control de versiones del proyecto, esto proporcionando una plataforma para la gestión y visualización de la participación de cada miembro del equipo en el apartado técnico del proyecto, al igual que el control de versiones y avances durante el desarrollo del proyecto.

b) Node Package Manager
Este gestor de paquetes será utilizado para la implementación de herramientas relacionadas con la construcción y documentación del proyecto.

c) Profeco API
Será utilizada para la obtención de datos de los diversos productos buscados por los usuarios, al igual que representará un marco de referencia para el análisis de fotografías de promociones capturadas por los mismos.

d) Google Cloud Vision API
Se utilizará para el reconocimiento de productos, la API generará una etiqueta con el texto correspondiente, representando al producto, o a la etiqueta del mismo en caso de tener una, la cual se pasará a la API de profeco.

e) Visual Studio Code
Es el editor de texto que se utilizará para el desarrollo de la aplicación.

f) React Native
Framework de Javascript que se utilizará para el desarrollo de la aplicación, permite desarrollar en móvil mediante la creación de componentes que representan elementos de la aplicación.
g) Expo
Herramienta que funciona con React Native, te permite acceder a las funcionalidades del dispositivo móvil, como la cámara, notificaciones y GPS, al igual que facilita la distribución en las diferentes tiendas virtuales de aplicaciones.

h) Genymotion
Se usará para emular un dispositivo móvil, permitiendo verificar el rendimiento de la aplicación.

i) Smartphone
Se utilizará para las pruebas del funcionamiento general de la aplicación, rendimiento, cámara, GPS, entre otros.

#### 5.2.4 Herramientas para testing y documentación
a) Jest
Será utilizado para el testing de los diferentes apartados de la aplicación, Jest permite simular peticiones de API, facilitando la prueba de los posibles casos de error.

b) Docz
Docz se utilizará para la documentación de los diversos componentes que utilizará React Native, esto permitiendo la creación de una documentación basada en JsDoc, sin limitarse a Javascript Vanilla.

#### 5.2.5 Herramientas para la comunicación 
a) Slack
Slack ser la forma principal de comunicación durante el transcurso del proyecto, herramienta en la cual se crearán múltiples canales para discutir diversos aspectos del proyecto y su desarrollo.
### 5.3 Procesos
1.Análisis de Requerimientos y definición de problemática (Product Backlog)
Durante esta etapa el equipo de trabajo realizará una reunión presencial para acordar y definir la problemática en cuestión, una vez definido el contexto y contemplados los puntos críticos de la problemática de interés comenzará la concepción de requerimientos para el desarrollo del sistema, para lo cual será requerida la concepción de una solución moderna, y eficiente para la población actual en México.
Una vez definidos los requerimientos para el desarrollo del sistema se realizará una reunión por Google Hangouts, esto para determinar la prioridad de los distintos requerimientos, los cuales proporcionará al equipo una forma objetiva para cuantificar y medir su avance. 
Estos requerimientos serán reestructurados y representados como ítems, los cuales servirán al equipo para definir las funcionalidades a implementar en cada iteración (Sprint) durante el transcurso del desarrollo del proyecto
El equipo realizará la documentación de los elementos clave del proyecto en un repositorio público de Github, que utilizará como referencia durante su desarrollo.

Contexto del equipo:
El equipo optó por el desarrollo de Frugalist, una aplicación destinada al ahorro y a la compra consciente en productos de supermercados en México, muchas de las personas desconocen la diferencia de precios en los distintos supermercados de su localidad, lo que lleva a una compra inconsciente, el desarrollo de Frugalist proporciona a la población Mexicana una herramienta para comparar el precio de uno, o varios productos de la canast básica de productos establecida por la INEGI.
Esto es tan sencillo como escribir el nombre del producto, o capturar una fotografía del mismo con cualquier dispositivo móvil actual.
Por esta razón, el equipo concluyó que Frugalist representa una solución a esta problemática, aprovechando uno de los medios de comunicación más importantes en la sociedad actual, como lo son los teléfonos inteligentes.

2.Sprint Planning
    Durante esta etapa se definirán los ítems que serán desarrollados durante la siguiente iteración (Sprint). Será necesario una reunión formal del equipo, donde se dividirán los diferentes ítems entre cada integrante, y se determinará la duración del sprint (la cual, será de una a dos semanas). De la misma manera, para asignar los distintos ítems, será necesario una estimación de la duración de los mismos, para esto, se utilizará la técnica “Planning poker”, en la que todo el equipo discutirá el tiempo esperado para la implementación del Sprint y cada ítem, hasta llegar a un acuerdo. Para el Sprint planning será utilizada la herramienta Asana para el agendado y división de los diferentes ítems del proyecto, los cuales serán representados como tickets.
En esta etapa se buscará responder las siguientes preguntas:
¿Qúe se puede hacer en este Sprint?
Se definirá la funcionalidad a desarrollar, y los ítems que serán necesarios realizar para su implementación. Tras la definición de los mismos, el equipo definirá una meta para el Sprint, la cual representará una guía para la implementación del Sprint, y una razón para la construcción del incremento.
¿Cómo se llevará a cabo?
Una vez establecida la meta del Sprint, el equipo definirá qué ha de ser realizado para considerar la implementación “terminada”, para lo cual será necesario descomponer las tareas asignadas a cada integrante para comprender y fundamentar las actividades de cada miembro del equipo.
¿Cúal es la Meta del Sprint?
Representa los ítems necesarios para el desarrollo de una funcionalidad en un Sprint. La definición de una meta del Sprint proporciona al equipo flexibilidad cuando se trata la implementación de la funcionalidad, y sirve como guía para el desarrollo de la misma.

3.Construcción del proyecto (Sprint)
    Durante esta etapa, el equipo trabajará en el desarrollo de la aplicación basados en el sprint planning definido con anterioridad. Es importante notar que durante esta etapa no se realizará ningún cambio a los ítems determinados o a la meta del Sprint sin antes ser consultado con el equipo. De la misma manera, se tomarán en consideración las siguientes reglas:
El sprint deberá durar de 1 a 3 semanas, no más.
Para complementar a la etapa de “Scrum Review”, se realizarán reuniones no presenciales al final de cada semana, estas para discutir el avance realizado por el equipo, en qué aspectos puede mejorar, y qué ítems deberán ser alterados para garantizar la compleción de la meta definida. 

4.Daily Scrum
    El Daily Scrum será una reunión realizada diariamente, que tendrá una duración de 15 a 30 minutos. 

## 6. Trabajo en equipo
## 6.1 Metrica para medición de avance
El avance será medido con base en las funciones que se le agruegen al producto. Por ejemplo, añadirle un algoritmo de busqueda, conectar la app con el API, etc. 

## 7. Construcción
