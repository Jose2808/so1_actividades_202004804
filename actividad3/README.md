# ACTIVIDAD 3

El error que del que se está hablando ocurre debido a que las rutas dentro de la aplicación de react son administradas por **react-router**. Entonces cuando se cambia de una página a otra, en este caso se cambia de **http://localhost:3000/login** a **http://localhost:3000/register**, el cambio entre estas url es manejado por el navegador en sí mismo, sin embargo cuando se está en la nueva página y se intenta recargar la solicitud ahora es dirigida hacia nginx, y según nginx esta ruta no existe. Para poder solucionar esto se debe cargar el archivo raíz de la página (que normalmente es index.html) para que de esta forma nginx pueda enviar el archivo y la ruta que se está solicitando sea siempre manejada por la aplicación de react en el buscador.

Para poder realizar esto se deben hacer dos cambios en el proyecto, el primero es crear un archivo **nginx.conf** en la carpeta **frontend**.

Sin embargo, la parte más importante del archivo es la siguiente:

```JavaScript
    location / {
        try_files $uri /index.html;
    }
```
La cual básicamente lo que hace es indicarle a nginx que cuando busque una ruta y no la encuentre, entonces que le retorne el archivo index.html al navegador, donde react se hará cargo de poder manejar las rutas.

Además de esto se debe copiar este archivo **nginx.conf** en la ruta **/etc/nginx/conf.d/default.conf** en la imagen de docker para que pueda funcinar, entonces, otro cambio que se debe realizar es dentro del dockerfile del frontend, donde se tiene que agregar una linea extra para que se pueda realizar esta acción, suponiendo que el archivo **nginx.conf** está a la misma altura del dockerfile, la linea a agregar quedaría de la siguiente forma:

```Docker
    COPY ./nginx.conf /etc/nginx/conf.d/default.conf
```