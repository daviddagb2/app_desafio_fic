
# Desafio FIC

El equipo del proyecto FIC, necesita desarrollar un sistema que permita informar adecuadamente a los emprendedores de la Región Metropolitana de Santiago, cuál es el a)paso a paso para formalizarse, b)documentos a presentar para conseguir la autorización y c)lugares en donde debe realizar el trámite, ya sea presencial o en línea

Para resolver esta problematica se ha creado un pequeño sistema de registro de emprendedores en el cual se les brindará información relevante sobre sus negocios y como empezar.


## Sitio web en Vivo

Este demo puede ser consultado en la siguiente URL:

- [https://desafiofic.gonzalezblanchard.com/](https://desafiofic.gonzalezblanchard.com/)


## Variables de entorno

Para ejecutar este proyecto es necesario remplazar las variables en el archivo .ENV indicando la base de datos. Se pueden copiar de .env.example.


`APP_NAME`: Nombre del proyecto: AppFIC

`APP_ENV`: Local o Production

`APP_DEBUG`: Mostrar o no los mensajes de debug

`DB_HOST`: El host de la base de datos generalmente: 127.0.0.1

`DB_PORT`: El puerto hacia Mysql, generalmente 3306

`DB_DATABASE`: Nombre de la base de datos

`DB_USERNAME`: Usuario de la base de datos

`DB_PASSWORD`: Contraseña


## Despliegue

Para desplegar este proyecto es necesario ejecutar los siguientes comandos:

Comandos PHP/Composer
```bash
  composer install
  php artisan key:generate
  php artisan migrate
```

Instalar los datos de prueba ingresados en los seeders
```bash
  php artisan db:seed
```

Compilar los assets creados con node/vite
```bash
  npm install
  npm run build
```




## Diagrama de datos

Para representar las entidades de este proyecto se diseño el siguiente diagrama para representar como funcionan los datos:


![App Screenshot](https://app_desafio_fic.test/img/DiagramaFIC.png)
https://app_desafio_fic.test/img/DiagramaFIC.png

La idea es que un usuario (user) pueda tener un perfil de emprendedor, o no en caso de ser un admin. Asi mismo se crearon tablas catálogo para IndustrySector (Rubro), Communes (Comunas) y Documents (Documentos). 

Los documentos estan enlazados por medio de la tabla DocumentAssigment en la cual se define que documento, que comuna y que industria deben coincidir.

Se creo una tabla EntrepreneurDocument para validar en un futuro que un Emprendedor suba la documentación solicitada al sitio.


## Base de datos

Si deseas instalar directamente la base de datos puedes encontrarla en el repositorio.

- [https://github.com/daviddagb2/app_desafio_fic/blob/master/Dump20230423.sql](https://github.com/daviddagb2/app_desafio_fic/blob/master/Dump20230423.sql)



## Contact me

- [Website](https://gonzalezblanchard.com/)
- [LinkedIn](https://www.linkedin.com/in/davidgb2021/)
- [Github](https://github.com/daviddagb2)
- [Facebook](https://www.facebook.com/gonzalezblanchard)
- [Blog](https://blanchardspace.wordpress.com/)
- [Linktree](https://linktr.ee/davidgb77)
- [Youtube](https://www.youtube.com/@developergb)