# **Frugalist**
Repositorio de documentos del Equipo 1 para la asignatura "Programación Estructurada" de la Facultad de Matemáticas (UADY) impartida por el Profesor Edgar Cambranes Martínez

### Mienbros del equipo:

+ **Eyder Antonio Concha Moreno**  <br>
+ **Jorge Chí León** <br>
+ **Luis Gerardo León Ortega** <br>
+ **Rodrigo Hernández Góngora** <br>

## Tabla de contenido

### 1. Introducción

- 1.1 Resumen
- 1.2 Relevancia
- 1.3 Público Objetivo

### 2. Definición de Proyecto

- 2.1 Metas y Objetivos
- 2.2 Definiciones
- 2.3 Entidades de información

### 3. Plan de Proyecto

- 3.1 Investigación
- 3.2 Roles
- 3.3 Tareas

### 4. Requerimientos

- 4.1 Actores de sistema
- 4.2 Requerimientos de usuario
- 4.3 Requerimientos de sistema
  - 4.3.1 Funcionales
  - 4.3.2 No funcionales
    - 4.3.2.1 Requerimientos de producto
- 4.4 Casos de uso
  - 4.4.1 Diagramas
- 4.5 Product blacklog
  - 4.5.1 Historias de usuario
  - 4.5.2 Product backlog
  
### 5. Proceso de Desarrollo

- 5.1 Herramientas
- 5.2 Métodos
- 5.3 Procesos
- 5.4 Productos y artefactos

### 6. Trabajo en Equipo

- 6.1 Comunicación
- 6.2 Roles
- 6.3 Calendario
- 6.4 Repositorio
- 6.5 Métricas
- 6.6 Bitácora

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
### 2.1 Metas y objetivos
El objetivo principal de Frugalist es proporcionar una forma útil y eficiente de verificar el precio de cualquier producto en un supermercado de tu localidad.

Entre los objetivos generales de Frugalist podemos identificar los siguientes:

1.  Permitir a cualquier persona con un smartphone actual verificar el precio de un producto disponible en un supermercado.
    
2.  Proporcionar una plataforma confiable, y con productos principales de la canasta básica del ciudadano mexicano.
    
3.  Contribuir al desarrollo del hábito para una compra consciente y efectiva
  
### 2.2 Definiciones

```
We don't have information.
```

### 2.3 Entidades de información

Como entidad principal de información usaremos a la Profeco. De ella sacaremos la información de los precios de los artículos de supermercado principalmente, aunque igual podríamos preguntar a sus empleados en caso de que necesitemos algún tipo de información.

También usaremos como entidad el API de Google Vision, ya que este API nos servirá para implementar la búsqueda por foto, para que sea más agil el proceso de búsqueda.

Por último están los consumidores, ya que estos podrían registrar las ofertas que haya en algún supermercado para que otras personas puedan aprovecharlas.

## 3. Plan de Proyecto

### 3.1 Investigación

Para la investigación se ha realizado una búsqueda que se encuentra dividida en dos partes:

1. Conceptualización  
2. Apartado técnico

En la etapa de conceptualización se realizó una investigación con el objetivo de fundamentar la idea de proyecto planteada por el equipo, en este caso Frugalist.

La investigación realizada está centrada en la comprensión de la problemática en cuestión, y la utilidad de la solución planteada.

En este caso, fue necesario comprender los hábitos de compra del grupo de personas que residen en una ciudad con más de 2 supermercados. Para entender la solución propuesta fue necesario plantear las siguiente pregunta
  
**¿Qué lleva a alguien a comprar en un supermercado en particular?**

Con base a esto se encontró que la motivación principal para la compra en un supermercado en particular se encuentra en:

1.  Las ofertas
2.  Los precios (de forma general)    
3.  La distancia
      
Áreas de las cuales dos, son tratadas por el proyecto en cuestión, por lo tanto pudimos verificar que el proyecto verdaderamente representa una solución a una problemática actual.

El otro apartado a tratar (Apartado técnico) está relacionado con el factor innovador del proyecto, como se puede hacer uso de la tecnología para garantizar una compra eficiente y efectiva para la sociedad Mexicana, para lo cual se decidió la implementación de tecnologías que hacen uso de recursos que involucran conceptos como “OCR”. Este recurso siendo utilizado de una manera eficiente, que verdaderamente facilita y proporciona una mejor experiencia cuando se trata de verificar los precios de uno o múltiples productos en los supermercados mexicanos.

### 3.2 Roles

Estos roles representan las principales actividades que realizará cada integrante del equipo siguiendo la metodología Scrum, dado que las tareas y roles específicos serán definidos antes de cada Sprint, en este apartado se detallan los roles fundamentales.

**Eyder Concha** - *Scrum Master/Product Owner/Scrum Team*
**Jorge Chí** - *Scrum Team*
**Luis León** - *Scrum Team*
**Rodrigo Hernández** - *Scrum Team*

### 3.3 Tareas
```
We don't have information
```

## 4. Requerimientos

### 4.1 Actores de sistema

Usuario: Persona que usa el sistema.

-   Puede buscar el precio de un producto de la canasta básica en los supermercados cercanos (México) ya sea ingresando una cadena de texto o tomando una foto del artículo que desea.
    
-   Puede crear un “carrito de compras” (lista de productos) el precio del cual podrá ser comparado en los supermercados de la ciudad.
    
-   Puede filtrar la búsqueda del producto con base al supermercado de su elección.  

### 4.2 Requerimientos de usuario

1. Los usuarios podrán visualizar y buscar el precio de productos de la canasta básica en los supermercados de su ciudad, la cual podrá ser identificada con el GPS de su teléfono móvil.

2. Los usuarios podrán buscar un producto con una fotografía o con el nombre del mismo.

3. Los usuarios podrán crear un carrito de compras con los productos deseados, cuyo precio, será comparado en los distintos supermercados de su ciudad.

4. Los usuarios podrán filtrar los productos con base al supermercado de su elección.

### 4.3 Requerimientos de sistema

#### 4.3.1 Funcionales

| RF001   |      Pagina principal.      |  
|----------|:-------------:|
| Prioridad:| alta |
| Descripción |  El sistema deberá (estando un usuario activo en la aplicación), mostrar la primera página que deberá ser mostrada es la página página principal. En esta página el usuario podrá buscar un producto de la canasta básica de productos en México de dos formas. Las formas de búsqueda siendo: **1. Introduciendo el nombre del producto deseado 2. Tomando una fotografía del producto**, el usuario podrá seleccionar el municipio en el que se encuentra como parámetro para la búsqueda.|

***

| RF002   |      Búsqueda por nombre de producto.     |  
|----------|:-------------:|
| Prioridad:| alta |
| Descripción |  El usuario podrá buscar un producto ingresando su nombre, o el de su presentación.|

***

| RF003   |     Búsqueda por fotografía.      |  
|----------|:-------------:|
| Prioridad:| alta |
| Descripción |  El sistema será capaz de procesar una fotografía de un producto de la canasta básica, los productos deberán cumplir los siguientes requisitos: **1.  El producto deberá tener el nombre de forma clara en la fotografía 2.  De ser una fruta o verdura, el producto deberá estar ante una buena iluminación 3.  Solamente un producto podrá estar en la fotografía** |

***

| RF004   |     Resultado de búsqueda en lista.      |  
|----------|:-------------:|
| Prioridad:| alta |
| Descripción |  El sistema podrá mostrar los resultados de la búsqueda podrán en forma de lista. Cada producto en la lista deberá contar con la siguiente información: 1.  Precio; 2.  Nombre de Presentación; 3.  Cadena Comercial; 4.  Dirección, -La máxima cantidad de productos en pantalla será de 5, de haber más, el usuario podrá scrollear para visualizar los demás. -Los productos serán mostrados en orden de precio, de menor a mayor. -Cada producto contará con un botón para ser añadido al carrito de compras del usuario -Contará con un apartado en el cual se podrá seleccionar supermercados para filtrar los productos encontrados. |

***

| RF005   |     Carrito de compra.      |  
|----------|:-------------:|
| Prioridad:| media |
| Descripción |  El sistema permitirá seleccionar una opción de “carrito de compras”, la cual permitirá visualizar el coste total de los productos en la lista en los distintos supermercados donde los productos se encuentren disponibles. Los productos en el carrito de compras podrán ser seleccionados para visualizar la búsqueda de ese producto nuevamente. |

***

| RF005   |     Carrito de compra.      |  
|----------|:-------------:|
| Prioridad:| media |
| Descripción |  El sistema permitirá seleccionar una opción de “carrito de compras”, la cual permitirá visualizar el coste total de los productos en la lista en los distintos supermercados donde los productos se encuentren disponibles. Los productos en el carrito de compras podrán ser seleccionados para visualizar la búsqueda de ese producto nuevamente. |

***

#### 4.3.2 No funcionales
#### 4.3.2.1 Requerimientos de producto

| RNF001   |     Uso de memoria.      |  
|----------|:-------------:|
| Descripción |  La cantidad de memoria ocupada por la aplicación: -Ideal: no más de 20MB -Planeado: no más de 50MB -Debe: no más de 100MB Definición MB: Megabyte. |

***

| RNF002   |     Precisión de datos.      |  
|----------|:-------------:|
| Descripción |  La exactitud de los precios con los supermercados reales: -Todos los precios a mostrar deberán haber sido actualizados en los últimos 10 días. |

***

| RNF003   |     Productos aceptados para búsqueda.      |  
|----------|:-------------:|
| Descripción |  Los productos que podrán comprobarse en la aplicación son los siguientes: -Todos los productos de la canasta básica (excluyendo los añadidos en 2019) establecidos por INEGI y SEDESOL. |

***

| RNF004   |     Tiempo de petición de productos.      |  
|----------|:-------------:|
| Descripción |  El tiempo que la aplicación tardará en mostrar los productos: -Ideal: no más de 1 segundo -Planeado: no más de 2 segundos -Debe: no más de 3 segundos. |

***

| RNF005   |     Cantidad de supermercados.      |  
|----------|:-------------:|
| Descripción |  Los supermercados disponibles en la aplicación: -Los supermercados en la lista del API de PROFECO. |

***

| RNF005   |     Cantidad de productos.      |  
|----------|:-------------:|
| Descripción |  Los productos disponibles en la aplicación: -Los productos en la lista del API de PROFECO que formen parte de la canasta básica Mexicana. |

***

### 4.4 Casos de uso

***
**CU01**: Busqueda por fotografia. <br>
**Descripcion**: El usuario busca el precio de un producto de la canasta básica por fotografía para saber donde le conviene más comprar. <br>
**Secuencia**:
 1. El usuario abre la aplicacion
 2. El usuario selecciona la opción de búsqueda “por fotografía” en la pantalla principal.
     2.1 El usuario agrega su municipio como parámetro de búsqueda adicional.
 3. El usuario toma la fotografía.
 4. La aplicación muestra los resultados de la búsqueda.
    4.1 El usuario selecciona un resultado y lo agrega al “carrito de compras”.
    4.2 Se lleva a cabo el CU03: carrito de compras.
    4.3 El usuario filtra los resultados por supermercado.
    4.4 Si el usuario desea cancelar la acción se regresa a la pantalla principal.
<br>

**Salidas alternativas:**
  3.1 Si la fotografía no es aceptable (según requerimiento) se informa al usuario y se le pregunta si desea reintentarlo.
  
    3.1.1 Si no desea reintentarlo se regresa a la pantalla principal

3.2 Si el usuario desea cancelar la acción se regresa a la pantalla principal.

***

**CU02**: Búsqueda por texto. <br>
**Descripcion**: El usuario busca el precio de un producto de la canasta básica por texto para saber donde le conviene más comprar. <br>
**Secuencia**:
 1. El usuario abre la aplicacion
 2. El usuario selecciona la opción de búsqueda “por texto” en la pantalla principal.
     2.1 El usuario agrega su municipio como parámetro de búsqueda adicional.
 3. El ingresa el nombre del producto.
 4. La aplicación muestra los resultados de la búsqueda.
    4.1 El usuario selecciona un resultado y lo agrega al “carrito de compras”.
    4.2 Se lleva a cabo el CU03: carrito de compras.
    4.3 El usuario filtra los resultados por supermercado.
    4.4 Si el usuario desea cancelar la acción se regresa a la pantalla principal.
<br>

**Salidas alternativas:**
  3.1 Si el texto no es aceptable (según requerimiento) se informa al usuario y se le pregunta si desea reintentarlo.
  
    3.1.1 Si no desea reintentarlo se regresa a la pantalla principal

3.2 Si el usuario desea cancelar la acción se regresa a la pantalla principal.

***

**CU03**: Carrito de compras <br>
**Descripcion**: El usuario agrega el/los producto(s) al carrito de compras para comparar el precio de estos en conjunto.<br>
**Pre requisitos**: El usuario se encuentra en la pantalla principal o pantalla de resultados de búsqueda.<br>
**Secuencia**:
 1. El usuario selecciona la opción de carrito de compra.
 2. El sistema muestra los productos actuales del carrito de compras del usuario.
     2.1 El usuario elimina un producto del carrito de compras.
     2.2 El usuario elige uno de los productos para realizar la búsqueda de nuevo con ese mismo producto.
	 * 2.2.1 Se muestra la pantalla de resultados del producto (paso 4 del CU01 Y CU02).
 3. El usuario elige la opción de comparar precio.
 4. La aplicación muestra los resultados de la comparación.
<br>

**Salidas alternativas:**
 2. Si el usuario desea cancelar la acción se regresa a la pantalla principal.
 3. Si el usuario desea cancelar la acción se regresa a la pantalla principal.
***
*Nota: Al abrir la aplicación se muestra la página principal siempre.*

####  4.4.1 Diagrama de casos de uso

[imagen1 - CU01]

[imagen2 - CU02]

[imagen3 - CU03]

### 4.5 Product Backlog

#### 4.5.1 Historias de Usuario

***

**HU01** - Inicio del sistema
**Como:** Usuario
**Quiero:** Visualizar que el sistema inicie con una imagen característica
**Para:** Ingresar al sistema
**Condiciones:**
1. El tamaño de la imagen deberá ser óptimo para todos los dispositivos (Deberá estar en todas los tamaños necesarios)
2. Deberá tener el lema del servicio
    
***
  
**HU02** -  Pantalla de Inicio
**Como:** Usuario
**Quiero:** Seleccionar las diversas opciones de búsqueda en una pantalla principal
**Para:** Saber que tipos de búsqueda realizar
**Condiciones:**
-   Deberá mostrar las dos opciones de búsqueda (texto y foto)
-   Deberá contar con una opción para acceder al carrito de compras
-   Debe tener una imagen representativa del sistema
-   El usuario podrá introducir su ciudad como parámetro de búsqueda
    
***

**HU03** - Búsqueda por texto
Como: Usuario
Quiero: Buscar un producto escribiendo su nombre, o su presentación.
Para: Saber su precio
Condiciones:
-   El usuario podrá introducir como parámetro su ciudad
-   El usuario podrá introducir el nombre de un producto con el nombre de su presentación, o el tipo de producto (Ejemplo: Sabritas o Frituras)
    
***

**HU04** - Búsqueda por imagen
**Como:** Usuario
**Quiero:** Buscar un producto con una fotografía del mismo
**Para:** Saber su precio
**Condiciones:**
-   El usuario podrá capturar una fotografía del producto
-   El usuario podrá capturar la fotografía de un producto con etiqueta o sin etiqueta
  
  ***

**HU05** - Precios de productos
**Como:** Usuario
**Quiero:** Visualizar el precio de producto buscado
**Para:** Saber en que lugar comprar
**Condiciones:**
-   Deberán mostrarse los productos ordenados conforme al precio.
-   El usuario podrá seleccionar entre distintos parámetros entre ellos: un supermercado en particular y una categoría de producto.
-   El usuario podrá añadir un producto a su carrito de compra
    
 ***
 
**HU06** - Carrito de compras
**Como:** Usuario
**Quiero:** Visualizar el costo total de los productos seleccionados
**Para:** Saber el ahorro de mi carrito de compras
**Condiciones:**
-   El usuario podrá visualizar el coste total de múltiples productos en diferentes supermercados.
-   El usuario podrá seleccionar los supermercados de los cuales desea visualizar el precio.
-   El usuario podrá añadir o quitar ítems de la lista del carrito.

#### 4.5.2 Product Backlog

https://docs.google.com/spreadsheets/d/1JUcAUXYVMxapeXlcMeodk5aaJgzYbr5WMM8Dc8G8FN4/edit#gid=0

### 5. Proceso de desarrollo

#### 5.1 Herramientas

##### 5.1.1 Herramientas de Requerimientos

- Asana
- Google Sheets
- Google Drive
 
#### 5.1.2 Herramientas de Diseño

- Figma
- Google Slides
- LucidChart (UML)

### 5.1.3 Herramientas de Construcción-

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

Estas herramientas serán utilizadas para la gestión y el control de requerimientos. Al igual que servirán para establecer un reporte del progreso durante el desarrollo del proyecto.

  

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
Para este proyecto se ha determinado que la metodología a utilizar será Scrum, por lo tanto, los distintos pasos que conforman el proceso general, tendrán un enfoque iterativo, por consecuente, estos serán realizado en más de una ocasión.

1.-Análisis de Requerimientos y definición de problemática (Product Backlog)

Durante esta etapa el equipo de trabajo realizará una reunión presencial para acordar y definir la problemática en cuestión, una vez definido el contexto y contemplados los puntos críticos de la problemática de interés comenzará la concepción de requerimientos para el desarrollo del sistema, para lo cual será requerida la concepción de una solución moderna, y eficiente para la población actual en México.

Una vez definidos los requerimientos para el desarrollo del sistema se realizará una reunión por Google Hangouts, esto para determinar la prioridad de los distintos requerimientos, los cuales proporcionará al equipo una forma objetiva para cuantificar y medir su avance.

Estos requerimientos serán reestructurados y representados como ítems, los cuales servirán al equipo para definir las funcionalidades a implementar en cada iteración (Sprint) durante el transcurso del desarrollo del proyecto

El equipo realizará la documentación de los elementos clave del proyecto en un repositorio público de Github, que utilizará como referencia durante su desarrollo.

  

-   Contexto del equipo:
    

El equipo optó por el desarrollo de Frugalist, una aplicación destinada al ahorro y a la compra consciente en productos de supermercados en México, muchas de las personas desconocen la diferencia de precios en los distintos supermercados de su localidad, lo que lleva a una compra inconsciente, el desarrollo de Frugalist proporciona a la población Mexicana una herramienta para comparar el precio de uno, o varios productos de la canast básica de productos establecida por la INEGI.

Esto es tan sencillo como escribir el nombre del producto, o capturar una fotografía del mismo con cualquier dispositivo móvil actual.

Por esta razón, el equipo concluyó que Frugalist representa una solución a esta problemática, aprovechando uno de los medios de comunicación más importantes en la sociedad actual, como lo son los teléfonos inteligentes.

  

2.- Sprint Planning

Durante esta etapa se definirán los ítems que serán desarrollados durante la siguiente iteración (Sprint). Será necesario una reunión formal del equipo, donde se dividirán los diferentes ítems entre cada integrante, y se determinará la duración del sprint (la cual, será de una a dos semanas). De la misma manera, para asignar los distintos ítems, será necesario una estimación de la duración de los mismos, para esto, se utilizará la técnica “Planning poker”, en la que todo el equipo discutirá el tiempo esperado para la implementación del Sprint y cada ítem, hasta llegar a un acuerdo. Para el Sprint planning será utilizada la herramienta Asana para el agendado y división de los diferentes ítems del proyecto, los cuales serán representados como tickets.

En esta etapa se buscará responder las siguientes preguntas:

1.  ¿Qúe se puede hacer en este Sprint?
    

Se definirá la funcionalidad a desarrollar, y los ítems que serán necesarios realizar para su implementación. Tras la definición de los mismos, el equipo definirá una meta para el Sprint, la cual representará una guía para la implementación del Sprint, y una razón para la construcción del incremento.

2.  ¿Cómo se llevará a cabo?
    

Una vez establecida la meta del Sprint, el equipo definirá qué ha de ser realizado para considerar la implementación “terminada”, para lo cual será necesario descomponer las tareas asignadas a cada integrante para comprender y fundamentar las actividades de cada miembro del equipo.

3.  ¿Cúal es la Meta del Sprint?
    

Representa los ítems necesarios para el desarrollo de una funcionalidad en un Sprint. La definición de una meta del Sprint proporciona al equipo flexibilidad cuando se trata la implementación de la funcionalidad, y sirve como guía para el desarrollo de la misma.

4.  ¿Cuál es la definición de hecho?
    

Se definirán cuales son las condiciones a cumplir de cada ítem para ser considerado hecho, de esta manera asegurando un incremento de producto apropiado.

  

3.- Construcción del proyecto (Sprint)

Durante esta etapa, el equipo trabajará en el desarrollo de la aplicación basados en el sprint planning definido con anterioridad. Es importante notar que durante esta etapa no se realizará ningún cambio a los ítems determinados o a la meta del Sprint sin antes ser consultado con el equipo. De la misma manera, se tomarán en consideración las siguientes reglas:

1.  El sprint deberá durar de 1 a 3 semanas, no más.
    
2.  Para complementar a la etapa de “Scrum Review”, se realizarán reuniones no presenciales al final de cada semana, estas para discutir el avance realizado por el equipo, en qué aspectos puede mejorar, y qué ítems deberán ser alterados para garantizar la compleción de la meta definida.
    

  

4.- Daily Scrum

El Daily Scrum será una reunión realizada diariamente, que tendrá una duración de 15 a 30 minutos. El objetivo del Daily Scrum es reflexionar e idear un plan a realizar para las siguientes 24 horas. Esto se hará inspeccionando el trabajo realizado desde el último Daily Scrum, y respondiendo una serie de preguntas para asegurar un avance adecuado, las preguntas son las siguientes:

1.  ¿Qué hice ayer para ayudar al equipo a acercarse a la meta del Sprint?
    
2.  ¿Qué haré hoy para acercar al equipo a la meta?
    
3.  ¿Existe algún impedimento que me dificulte a mi, o al equipo el alcanzar la meta del Sprint?
    

  

Uno de los aspectos más importantes del Daily Scrum, es que permitirá al equipo a entender cómo trabajar en conjunto, como un equipo auto-organizado hacia una meta.

  

5.- Sprint Review

Representa una reunión que se realizará al final de cada Sprint para examinar el incremento con respecto al Product Backlog. Con base a los cambios en el Product Backlog durante el sprint se discutirán las medidas necesarias para optimizar el valor generado. Esta etapa incluye los siguientes elementos:

1.  Tendrá una duración de 1 a 2 horas (ésta dependiendo de la duración del sprint).
    
2.  Se hará una revisión de los ítems “hechos” y “no hechos”.
    
3.  El equipo de desarrollo discutirá todo lo que fue elaborado adecuadamente durante el Sprint, los problemas encontrados, y cómo lidiaron con éstos.
    
4.  Se expone el trabajo realizado y se responden preguntas acerca del incremento.
    
5.  Con base al progreso realizado, se estiman fechas para la compleción del siguiente Sprint con base a los ítems en el Product Backlog.
    
6.  En caso de haberlos, se realizan los cambios necesarios al Product Backlog para garantizar un desarrollo óptimo del producto.
    
6.- Sprint Retrospective

Consiste en una reunión formal cuyo propósito es examinar la forma de trabajo del equipo durante el desarrollo del producto en el Sprint anterior, los aspectos siendo los siguientes:

1.  Inspección del Sprint anterior con respecto a la comunicación, proceso, métodos y herramientas.
    
2.  Identificar y ordenar los ítems que se realizaron correctamente según su importancia.
    
3.  Creación de un plan para la implementación de mejoras con respecto al proceso de trabajo del equipo.
    
4.  Se buscan formas de optimizar la calidad del producto redefiniendo el significado de “hecho”.

### 5.4 Productos y Artefactos

Product Backlog

El Product Backlog es una lista ordenada de todo lo que será necesario realizar para el producto, esto representado como historias de usuario, las cuales son llamadas “ítems”, esta lista representa una guía a seguir durante el desarrollo general del proyecto, seleccionando de forma específica un número determinado de ítems los cuales se desarrollaran a lo largo de un Sprint. Un número determinado de ítems será definido en la etapa de “Sprint planning”, anterior a cada sprint.

El product backlog está compuesto por los requerimientos principales para el desarrollo del producto, es dinámico y está en constante cambio durante el transcurso del proyecto, los cambios que se verán reflejados en esté serán todos los cambios relacionados con los requerimientos, herramientas, o métodos utilizados.

  

Sprint Backlog

Es un set de ítems del Product Backlog seleccionados para el Sprint, junto con un plan para la entrega del incremento y el cumplimiento de la meta definida. El sprint backlog define el trabajo necesario a realizar por el equipo para llevar los ítems a un estado de “hecho”. El Sprint backlog se encargará de hacer visible todo el trabajo necesario para alcanzar el objetivo del Sprint.

  

Incremento (documento)

El incremento es la suma de todos los ítems completados durante un sprint y todos los sprint anteriores, junto con la definición de “hecho”, la cual justifica la entrega de cada ítem en el Sprint, cualidad la cual cada Sprint debe cumplir para formar parte del incremento.

  

Incremento (aplicación)

Representa una nueva versión usable del producto, la cual contendrá los cambios y funcionalidades añadidas durante el Sprint.

  

## 6. Trabajo en equipo

### 6.1 Comunicación

La comunicación durante el desarrollo del proyecto representa un aspecto principal para el desarrollo del proyecto, para lo cual se utilizará un espacio de trabajo en Slack, en el cual se discutirán diversos aspectos del mismo utilizando canales, canales los cuales se nombraron de la siguiente manera:

1.  backlog
    

En este canal se discutirá todo lo relacionado con el Product Backlog y el Sprint Backlog

2.  scrum
    

En este canal se discutirá todo lo relacionado con Scrum y el proceso tu utilizado por el equipo, se presentarán dudas las cuales serán aclaradas por el Scrum Master

3.  documentación
    

En este canal se discutirá todo lo relaciona con la documentación del proyecto, esta documentación incluye apartados como los incrementos, sprint backlog, etc

4.  coding
    

En este canal se discutirá todo lo relacionado con la programación a lo largo del proyecto.

5.  testing
    

En este canal se reportarán los errores encontrados en el sistema, al igual que los tests realizados para el sistema.

  

### 6.2 Monitoreo

El monitoreo del equipo estará contenido en el Daily Scrum, donde tras terminar la reunión, se realizará un reporte con los cambios y aportes realizados ese día.

Al terminar la reunión semanal (la cual fue definida con anterioridad), el equipo elaborará una bitácora con el avance del proyecto, este representandose en ítems completados.

Finalmente, se realizará una bitácora general del Sprint, los ítems realizados a lo largo del mismo, y las metas alcanzadas.

  

### 6.3 Calendario

[https://docs.google.com/spreadsheets/d/1P4BmgfrX_iUjDPrADxpon_0sur8ZCLvIpozvQteNejw/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1P4BmgfrX_iUjDPrADxpon_0sur8ZCLvIpozvQteNejw/edit?usp=sharing)

![](https://lh4.googleusercontent.com/VHVQbT4cdLFxmWcUowfKz3-NBDLYzof_vguNBqvXmRP7D4DmtSmCZali6PLpD6dRRp0Ya60taGJRYeN9LRgSlGkLi8IHaId3i7pBvdHhb8zjjNvNP57sAHu6kluZ3KEg96mLrq-N)

Este calendario representa un desarrollo ideal del proyecto, sin embargo este se ve susceptible a cambios, los cuales se definirán durante el apartado de “Sprint planning”. Entre estos posibles cambios los principales son los siguientes:

1.  Duración del Sprint, de una a dos semanas.
    
2.  Días de discusión de avance, estos serán definidos durante el sprint planning
    
3.  Días de review y retrospective, estos serán definidos durante el sprint planning
    

Es importante notar que estos cambios se verán reflejados en el documento propuesto al ser definidos posteriormente al Sprint planning.

  

### 6.4 Repositorio

```
We don't have this information
```
  

### 6.5 Métricas

Las aportaciones serán medidas por medio de una tabla como la que se muestra a continuación:

Métricas de equipo

[https://lh5.googleusercontent.com/P1Wl2rwU9Spvb1HkLukZV7UJv9Z5S5J7oFOwQ03Yi5XExLMB4yLnsW512K8tAl1v9w-VfScEVHXf2PkgGbMy2gEX0l3prhXnuopkgLKU4j4QjRBGAXCJHHdkTSl05SQFz3tmlVQk](https://lh5.googleusercontent.com/P1Wl2rwU9Spvb1HkLukZV7UJv9Z5S5J7oFOwQ03Yi5XExLMB4yLnsW512K8tAl1v9w-VfScEVHXf2PkgGbMy2gEX0l3prhXnuopkgLKU4j4QjRBGAXCJHHdkTSl05SQFz3tmlVQk)

Esta tabla nos permite comunicar los estados de las iteraciones para una fácil visualización del avance del equipo. Al igual que nos permite determinar cuál era el plan para las iteraciones al inició, y cómo éstas van cambiando a lo largo del desarrollo del proyecto. Las funciones nuevas que se agreguen, las que se eliminen, que sean modificadas o pospuestas a otra iteración serán fácilmente visibles para los integrantes del equipo y para el coach, lo que nos permitirá llevar un registro ágil.

  

Métricas individuales

El avance individual será medido por medio de “Cycle Time” y “Code coverage”. El Cycle time nos ayuda a medir la productividad, ya que se registra el momento en que se empieza la tarea y el momento en que se termina. El Code Coverage nos permite medir el porcentaje de nuestro código que es cubierto por pruebas unitarias. Si alguna parte de nuestro código no es funcional, no será añadido al porcentaje del código cubierto.

 ### 6.6 Bitácora

[https://docs.google.com/document/d/1SIPcgtLxdh9xKt2K06PQ5NomhC1ecwRbvj8CvB-9GBc/edit?usp=sharing](https://docs.google.com/document/d/1SIPcgtLxdh9xKt2K06PQ5NomhC1ecwRbvj8CvB-9GBc/edit?usp=sharing)

La bitácora será actualizada después de cada Daily Scrum, adjuntando la fecha de esta y una descripción de lo logrado durante el periodo que transcurrió entre el anterior Daily Scrum y el actual. El formato de la bitácora será el siguiente:

```
[Tabla de bitacora]
```

## 7. Construcción
7 Construcción

7.1 Lenguaje de Programación

El lenguaje de programación a utilizar será Javascript, junto con su estándar ES6+.

Además, se implementará con el Framework React.js, y su versión para desarrollo móvil, React Native.

7.2 Estándar de codificación

Se utilizará el estándar definido por Airbnb, que consiste en lo siguiente:

Cuando trabajamos con los primitivos, se hace de forma directa con los valores “String, number, boolean, null, undefined, symbol”, en JavaScript estos son declarados de forma automática con el prefijo var que proporciona libertad en la mutación de los datos al desarrollador y creando un estándar informal gracias a que es permitido omitir los punto y coma al final de la sentencia, que en primer plano a uno le podría parecer una ventaja, pero esto conlleva muchos potenciales errores ya que te permite crear una variable u objeto previamente creado, para evitar estos potenciales errores el estándar Airbnb siempre pondremos punto y coma al final de la sentencia y utilizaremos el prefijo let para variables y const para los constantes (valores que jamás cambiarán).
```
var  pi  =  3.1416;  /* bad */

var  bar = 2;

Prefijos:

const  pi  =  3.1416; //good

let  bar = 2;
```
Nombrado de archivos:

Para el nombrado de los archivos / classes de nuestro proyecto usaremos la regla CamelCase iniciando todos los archivos con mayúscula

Funciones:

Utilizaremos la sintaxis de parámetros por defecto en lugar de mutar los argumentos de la función.
```
// really bad

function  handleThings(opts) {

// No! We shouldn’t  // Double bad: if opts is falsy it'll be set to an object which may

mutate function arguments.

// be what you want but it can introduce subtle bugs.

opts = opts || {};

// ...

}

// still bad

function  handleThings(opts) {

if (opts ===  void  0) {

opts = {};

}

// ...

}

// good

function  handleThings(opts = {}) {

// ...

}
```
Siempre pondremos los parámetros por default de ultimo
```
// bad

function  handleThings(opts = {}, name) {

// ...

}

// good

function  handleThings(name, opts = {}) {

// ...

}
```
Usaremos espaciado en la creación de funciones por reglas de EsLint.
```
// bad

const  f  =  function(){};

const  g  =  function (){};

const  h  =  function() {};

// good

const  x  =  function () {};

const  y  =  function  a() {};

// bad

function  f1(a) {

a =  1;

// ...

}

function  f2(a) {

if (!a) { a =  1; }

// ...

}

// good

function  f3(a) {

const  b  = a ||  1;

// ...

}

function  f4(a =  1) {

// ...


}
```
No reasignaremos parámetros para evitar confusiones
```
// bad

function  f1(a) {

a =  1;

// ...

}

function  f2(a) {

if (!a) { a =  1; }

// ...

}

// good

function  f3(a) {

const  b  = a ||  1;

// ...

}

function  f4(a =  1) {

// ...

}
```

Funciones flecha:

Por reglas de EsLint utilizaremos las funciones flechas nos permitirá tener un sintax consistente y legible

```
// bad

[1, 2, 3].map(function (x) {

const  y  = x +  1;

return x * y;

});

// good

[1, 2, 3].map((x) => {

const  y  = x +  1;

return x * y;

});
```

Si el cuerpo de la función consiste en una sola declaración que devuelve una expresión sin efectos secundarios, omitiremos las llaves y use el retorno implícito. De lo contrario, mantendremos las llaves y utilizaremos una declaración de retorno permitirá que el código se lea bien cuando se encadenan múltiples funciones.

```
// bad

[1, 2, 3].map(number => {

const  nextNumber  = number +  1;

`A string containing the ${nextNumber}.`;

});

// good

[1, 2, 3].map(number =>  `A string containing the ${number +  1}.`);

// good

[1, 2, 3].map((number) => {

const  nextNumber  = number +  1;

return  `A string containing the ${nextNumber}.`;

});

// good

[1, 2, 3].map((number, index) => ({

[index]: number,

}));

// No implicit return with side effects

function  foo(callback) {

const  val  =  callback();

if (val ===  true) {

// Do something if callback returns true

}

}

let bool =  false;

// bad

foo(() => bool =  true);

// good

foo(() => {

bool =  true;

});

```

Si la expresión se extiende múltiples líneas usaremos un paréntesis para contenerlo

```
// bad

['get', 'post', 'put'].map(httpMethod =>  Object.prototype.hasOwnProperty.call(

httpMagicObjectWithAVeryLongName,

httpMethod,

)

);

// good

['get', 'post', 'put'].map(httpMethod => (

Object.prototype.hasOwnProperty.call(

httpMagicObjectWithAVeryLongName,

httpMethod,

)

));
```

Si la función toma un solo argumento y no usa llaves, omitiremos los paréntesis. De lo contrario, siempre incluiremos paréntesis alrededor de los argumentos para mayor claridad y consistencia. Nota: también es aceptable usar siempre paréntesis, en cuyo caso use la opción "always"
```
// bad

[1, 2, 3].map((x) => x * x);

// good

[1, 2, 3].map(number => (

`A long string with the ${number}. It’s so long that we don’t want it to take up space on the .map line!`

));

// bad

[1, 2, 3].map(x => {

const  y  = x +  1;

return x * y;

});

// good

[1, 2, 3].map((x) => {

const  y  = x +  1;

return x * y;

});
```

Clases

Usaremos class para manejar directamente el prototype, nos permitirá tener un sintax más consistente

```
// bad

function  Queue(contents = []) {

this.queue = [...contents];

}

Queue.prototype.pop  =  function () {

const  value  =  this.queue[0];

this.queue.splice(0, 1);

return value;

};

// good

class  Queue {

constructor(contents = []) {

this.queue = [...contents];

}

pop() {

const  value  =  this.queue[0];

this.queue.splice(0, 1);

return value;

}

}
```

Usaremos el extends para extender una clase hija de la clase padre

```
// bad

const  inherits  =  require('inherits');

function  PeekableQueue(contents) {

Queue.apply(this, contents);

}

inherits(PeekableQueue, Queue);

PeekableQueue.prototype.peek  =  function () {

return  this.queue[0];

};

// good

class  PeekableQueue  extends  Queue {

peek() {

return  this.queue[0];

}

}
```

Los métodos se podrán retornar ellos mismos con “this” para ayudar en el cambio del método

```
// bad

Jedi.prototype.jump  =  function () {

this.jumping =  true;

return  true;

};

Jedi.prototype.setHeight  =  function (height) {

this.height  = height;

};

const  luke  =  new  Jedi();

luke.jump(); // => true

luke.setHeight(20); // => undefined

// good

class  Jedi {

jump() {

this.jumping =  true;

return  this;

}

setHeight(height) {

this.height  = height;

return  this;

}

}

const  luke  =  new  Jedi();

luke.jump().setHeight(20);
```

Estará bien implementar un método editable “toString” que verifique la función de los métodos
```
class  Jedi {

constructor(options = {}) {

this.name  = options.name  ||  'no name';

}

getName() {

return  this.name;

}

toString() {

return  `Jedi - ${this.getName()}`;

}

}
```
Variables

Mantendremos una agrupación de “lets” y “const” para mayor legibilidad del código, también evita la declaración multi-línea
```
// bad

let i, len, dragonball,

items =  getItems(),

goSportsTeam =  true;

// bad

let i;

const  items  =  getItems();

let dragonball;

const  goSportsTeam  =  true;

let len;

// good

const  goSportsTeam  =  true;

const  items  =  getItems();

let dragonball;

let i;

let length;
```

Asignaremos las variables donde las necesitamos, pero poniéndolas en un lugar razonable
```
// bad - unnecessary function call

function  checkName(hasName) {

const  name  =  getName();

if (hasName ===  'test') {

return  false;

}

if (name ===  'test') {

this.setName('');

return  false;

}

return name;

}

// good

function  checkName(hasName) {

if (hasName ===  'test') {

return  false;

}

const  name  =  getName();

if (name ===  'test') {

this.setName('');

return  false;

}

return name;

}
```

7.3 Herramienta para documentación

Docz

La documentación la haremos con el software Docz, los estándares de documentación y plantillas las proporciona automáticamente, está basado en MDX qué es Markdown + JSX y tendrá igual soporte para TypeScript, convertirá los comentarios dentro del código como plantilla para la documentación.

Para el texto utilizaremos la sintaxis de Markdown, podremos pegar código de React y JavaScript. Para mostrar todas las propiedades que tiene un elemento usaremos la etiqueta <PropsTable of={button or other component}>

Ejemplo:

  
[https://lh5.googleusercontent.com/y0ViMrSz7WT-KQZSN_re-yAsMrZ_AC95jlKuphxp4-K-kFwgO0oh-g4k6wncMWiwMXK4zhp38_Lfiou-Pi15Taul8S8_NH9FAvwOBBZGs_AFls3QwPjbroXrlsrI9mjkq1FVQIou](https://lh5.googleusercontent.com/y0ViMrSz7WT-KQZSN_re-yAsMrZ_AC95jlKuphxp4-K-kFwgO0oh-g4k6wncMWiwMXK4zhp38_Lfiou-Pi15Taul8S8_NH9FAvwOBBZGs_AFls3QwPjbroXrlsrI9mjkq1FVQIou)

Documentacion: https://www.docz.site/documentation