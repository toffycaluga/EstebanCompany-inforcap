# Esteban company

## Descripción

Esta aplicación es una plataforma interna para que los empleados de la empresa puedan postular a cargos internos y mejorar sus oportunidades de crecimiento dentro de la compañía.

## Vistas de la app

- Vistas Admin:
  ![img](https://github.com/toffycaluga/EstebanCompany-inforcap/blob/main/app/assets/images/vista_udmin_1.png)

---

![img](https://github.com/toffycaluga/EstebanCompany-inforcap/blob/main/app/assets/images/vista_admin_2.png)

- vista user :
  ![img](https://github.com/toffycaluga/EstebanCompany-inforcap/blob/main/app/assets/images/vista_usuario_1.png)

---

![img](https://github.com/toffycaluga/EstebanCompany-inforcap/blob/main/app/assets/images/vista_usuario_2.png)

## Requerimientos

- Ruby 3.2.2
- Ruby on Rails 7.0.6
- PostgreSQL

## Instalación

1.  Clona el repositorio:

        git clone https://github.com/toffycaluga/EstebanCompany-inforcap.git
        cd EstebanCompany-inforcap

2.  Instala las gemas necesarias

        bundle install

3.  Configura las variables de entorno :

Crea un archivo `config/application.yml` usando el archivo `config/application.yml.sample` como plantilla. Completa las credenciales de Amazon S3 y otras configuraciones según tus necesidades.

4. Ejecuta las migraciones con `rails db:migrate`.
5. Opcional: Ejecuta el comando `rails db:seed` para agregar datos de prueba (administrador y usuarios de prueba).

## Uso

1. Ejecuta `rails server` para iniciar el servidor de desarrollo.
2. Accede a la aplicación en tu navegador en `http://localhost:3000`.

## Características

- Permite a Esteban hacer publicaciones de ofertas laborales.
- Los usuarios pueden postular a las ofertas laborales internas y notifican a Esteban.
- Los usuarios tienen un perfil con sus datos relevantes.
- Los usuarios pueden ver sus postulaciones en una pestaña dedicada.
- Imágenes alojadas en un bucket de S3.

## Paso a paso para subir a heroku

1. Crea una cuenta o inicia sesión en Heroku en https://www.heroku.com/.

2. Una vez que hayas iniciado sesión, en el Dashboard de Heroku, haz clic en el botón "New" (Nuevo) y selecciona "Create new app" (Crear nueva app).

3. En la página "Create new app", ingresa un nombre para tu aplicación y selecciona la región más adecuada.

4. Luego, en la pestaña "Deploy" (Desplegar) de la página de tu aplicación, en la sección "Deployment method" (Método de despliegue), elige la opción "GitHub" (también puedes elegir Git si has subido el código a GitHub previamente).

5. Conecta tu cuenta de GitHub a Heroku y busca el repositorio del proyecto en la lista.

6. Después de conectar el repositorio, puedes elegir entre desplegar la rama principal automáticamente o desplegar manualmente eligiendo la rama.

7. Una vez que hayas configurado el despliegue, ve a la pestaña "Settings" (Configuraciones) y haz clic en "Reveal Config Vars" (Mostrar variables de configuración).

8. Agrega todas las variables de entorno necesarias para tu aplicación. Asegúrate de configurar la clave secreta de Rails y cualquier otra variable que necesites.

9. Ahora, en la pestaña "Resources" (Recursos), asegúrate de que esté habilitado el servicio de base de datos PostgreSQL para tu aplicación. Si no lo está, agrégalo seleccionando "Heroku Postgres" en la sección "Add-ons".

10. Una vez que hayas configurado todo, haz clic en el botón "Deploy Branch" (Desplegar rama) en la pestaña "Deploy" para iniciar el despliegue de tu aplicación.

11. Heroku comenzará a desplegar la aplicación y podrás ver el progreso en los registros (logs). Si todo va bien, la aplicación debería estar disponible en la URL de Heroku.

⌨️ con ❤️ por [Toffy Caluga](https://github.com/toffycaluga)
