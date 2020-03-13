
## ¿Como fue diseñado el backend para Peor es Nada?

A grandes rasgos, se pensó originalmente como dos aplicaciones backend separadas (con una orientación a microservicios) ¿Cómo es eso? Bien, tener cuatro servicios trabajando, el microservicio receptor de las peticiones de los dispositivos GPS, las cuales serían enviadas a una cola (en RabbitMQ por ejemplo) y luego esta sería consumida por otro microservicio o como en lo particular pudiera ser: un worker, procesando los datos y almacenándolos en una base de datos (el cual es otro servicio en otro contenedor también), luego serían disponibilizados por una API REST (otro microservicio, aunque no sería tan micro).
 
Sin embargo por temas de tiempo no fue así y se optó por un enfoque más sencillo.

Se utiliza para este backend las siguientes tecnologías:


* 	Rails 5.2.4.1
* 	Postgresql 11
* 	Postgis 2.5
*   Docker y Docker Compose

La plataforma de despliegue que se utilizó fue AWS: una instancia EC2 t2.micro disponible en la `free tier`

Para ejecutar el proyecto localmente, es necesario tener docker y docker-compose instalados en la máquina donde deberán ser ejecutados.

Para descargar el repo deberá digitar en su cónsola de preferencia el comando git:

```bash
git clone https://github.com/yescorihuela/fullstack_challenge_recorrido_backend.git
```

Posterior a eso deberá entrar al directorio del repo descargado:
```bash
cd fullstack_challenge_recorrido_backend
```

Luego deberá ejecutar el siguiente comando docker:

```bash
docker-compose up --build
```

Al finalizar y quedar todos los servicios arriba deberá ejecutar los siguientes comandos:

```bash
docker-compose exec app_backend rails db:create # Para crear la base de datos
docker-compose exec app_backend rails db:migrate # Para generar las tablas en base a las migraciones
docker-compose exec app_backend rails db:seed # Para cargar datos de prueba y predeterminados
```

Se generaron 5 tareas (rake) para la ejecución de viajes con diversos eventos, los cuales deberían ser mostrados posteriormente en los correspondientes endpoints a partir de los requerimientos dados, las tareas son las siguientes:

```plain
rake trips:irregular_route          # Start to broadcast as GPS installed device get out from the route
rake trips:irregular_trips          # Start to broadcast as GPS installed device in vehicle with irregular broadc...
rake trips:regular_trips            # Start to broadcast as GPS installed device in a vehicle each 10 seconds
rake trips:stopped_vehicle          # Stopped vehicle
rake trips:unfinished_trip          # Start to broadcast as GPS installed device for unfinished trip
```

## Endpoints


**Nota:** Todos los endpoint poseen el prefijo http://ec2-3-86-166-95.compute-1.amazonaws.com:4001, que indican la ubicación remota donde se encuentra.

```bash
/api/v1/trips/:datetime/
```
Este endpoint retorna todos los viajes hechos en un día determinado, independiente de su estado o del sentido de la ruta.

Un ejemplo como puede ser utilizado:

```bash
http://ec2-3-86-166-95.compute-1.amazonaws.com:4001/api/v1/trips/2020-03-12/
```

----


```bash
/api/v1/trips/:datetime/direction/:trip_direction_id
```
Este endpoint retornta todos los viajes hechos en un día determinado, independiente de su estado pero con un sentido de ruta definido (trip_direction_id = 1 para Santiago - Peor es Nada | trip_direction_id = 2 para Peor es Nada - Santiago)


Un ejemplo como puede ser utilizado:

```bash
http://ec2-3-86-166-95.compute-1.amazonaws.com:4001/api/v1/trips/2020-03-12/direction/1
```

----
```bash
/api/v1/trips/:trip_id/events/:datetime(/:license_plate)
```
Este endpoint retorna todos los eventos de un viaje determinado (trip_id) y los lista en orden ascendente

Un ejemplo de como puede ser utilizado:

```bash
http://ec2-3-86-166-95.compute-1.amazonaws.com:4001/api/v1/api/v1/trips/3/events/2020-03-12/
```

----

```bash
/api/v1/trips/:trip_id/coordinates/:datetime/
```
Retorna la verificación de coordenadas y la proximidad del vehículo respecto a la coordenada indicada.

Un ejemplo de como puede ser utilizado:

```bash
http://ec2-3-86-166-95.compute-1.amazonaws.com:4001/api/v1/api/v1/trips/3/events/2020-03-12/
```
---

## Decisiones de diseño:

* Es necesario hacer un pequeño disclamer por acá: es la primera vez que utilizo la gema para trabajar con PostGIS. Ahora bien se decide simplificar el diseño del backend por una razón muy sencilla: el tiempo.

* Una de las cosas que quise introducir, fue la gema `fast_json` que es proporcionada por Netflix y que por los benchmarks realizados, tiene un performance muy superior respecto a Active Model Serializers (AMS), la evidencia empírica lo demuestra, es bastante rápido el renderizado de JSON en los endpoints.

* Se procede a utilizar servicios, para no cargar a los modelos de tanta lógica, por aquello de _Fat Models, Skinny Controlllers_, sin embargo las investigaciones que he realizado, indican que Rails cuenta con los _concerns_ que son una forma más efectiva y mejor desde el punto de vista del diseño de las aplicaciones. Traté de que los modelos no fueran tan _Fat_ y que los controladores solamente tengan lo mínimo para operar de acuerdo a su contexto.

* Las razones de porque he utilizado Docker, es no depender de mi equipo, la perdida de una librería o incompatibilidad con el sistema operativo, Xcode, etc, es preferible manejar esa incertidumbre con Docker y reducirla hasta su mínima expresión.

* Algunas consultas se dieron cercano al modo RAW, dado a la especificidad de los requerimientos, la proyección de la aplicación está hacia PostgreSQL, es la mejor herramienta en el ecosistema Open Source en el manejo de GIS.
* Las tareas (rakes) son grandes pero son simplificables, para mostrar mejor los requerimientos que se han solicitado, sin embargo por la primera razón expuesta en estos puntos sobre diseño, no ha sido posible simplificarlas.

