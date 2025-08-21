<h1>ServeRest - Pruebas de API con Karate</h1>

<h2>Descripción del Proyecto</h2>
Este es un proyecto de Automatización para probar la API_ServeRest usando el framework de pruebas Karate

<h4>Requisitos Previos</h4>
Java Development Kit (JDK) 17.0.15 
​Maven instalado y configurado.
IDE como IntelliJ IDEA 

<h4>Estructura del Proyecto</h4>
​src/test/java/bdd/API_Serverest: Aquí están los archivos .feature que contienen todas las pruebas de la API (GET, GET_Id, POST, PUT, DELETE).
​src/test/java/bdd/RunnerTest.java: Es el archivo principal para ejecutar las pruebas.
​pom.xml: Define las dependencias y la configuración del proyecto.

<h4>Cómo Ejecutar las Pruebas</h4>
​Desde IntelliJ IDEA, abre el proyecto.
​Navegar al archivo RunnerTest.java.
​Haz clic derecho en la clase RunnerTest y selecciona "Run 'RunnerTest'".
​Alternativamente, puedes usar el icono de "Play" que aparece en la parte superior.
​Desde la línea de comandos (con Maven)
1. ​Abre una terminal en la raíz del proyecto.
2. Ejecuta el siguiente comando para ejecutar todas las pruebas cambiando el tags del escenario a probar: mvn clean test -Dkarate.options="--tags @server17"

<h4>Reportes de Resultados</h4>
​Los reportes de los resultados de las pruebas se generan automáticamente en el directorio target/karate-reports. Puedes abrir el archivo karate-summary.html en tu navegador web para ver un resumen detallado de las ejecuciones.
​
<h4>Contribuciones</h4>
​Si deseas contribuir a este proyecto, por favor, contacta a [Yury Monzon/isyurymonzonv@gmail.com]


