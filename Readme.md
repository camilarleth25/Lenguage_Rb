# Guía para Ejecutar el Proyecto Ruby con Docker

A continuación te mostramos los pasos para ejecutar una aplicación Ruby dentro de un contenedor Docker.

## Pasos para Ejecutar en proyecto

### Paso 1: Clonar el Repositorio (si no se ha realizado)

Si es necesario, entra en el directorio del proyecto:

- cd LENGUAGE-RUBY

### Paso 2: Construir la Imagen Docker

Para construir la imagen del contenedor, ejecuta el siguiente comando:

- docker build -t pageruby .

### Paso 3: Iniciar el Contenedor Docker

Una vez que la imagen esté lista, corre el contenedor y mapea el puerto 8080 de tu máquina con el siguiente comando:

- docker run -p 8080:8080 pageruby

### Importante:

- La aplicación estará disponible en [http://localhost:8080](http://localhost:8080).