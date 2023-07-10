# EjercicioIntegradorJavaUBP
Consignas del ejercicio integrador Java - UBP

El objetivo de este ejercicio consiste en el desarrollo de un sistema web de guardado de libros en JAVA utilizando una base de datos Sqlite, JPA o JDBC para persistir objetos y JSP como tecnología web y Maven como gestor de dependencias.

Los paquetes que se deben utilizar para el proyecto se deben estructurar de la siguiente manera:

servlets: en este paquete se almacenarán aquellas clases que se utilizarán para mediar entre la vista con el usuario y las capas inferiores.
servicios: en este paquete se almacenarán aquellas clases que llevarán adelante lógica del negocio.
repositorios: en este paquete se crearán los repositorios que servirán como objetos de acceso a datos entre el modelo de objetos y la base de datos relacional.
Entidades o modelos: en este paquete se almacenarán aquellas clases que es necesario persistir en la base de datos.
Las vistas de la app deben ir en la carpeta correspondiente de acuerdo al arquetipo de Maven(webapp)

La entidad Libro en si tiene los siguientes atributos:

-Integer id

-Long ISBN (googlear que es el ISBN si no lo sabe).

-String título (Año de creación del libro, no es necesario usar un dato del tipo DATE)

-Integer anio

-Integer ejemplares (cantidad de libros disponibles)

-Boolean alta (En sqlite no existe este tipo de dato investigar cómo implementarlo)


El objetivo es crear un CRUD completo de para cargar, borrar, editar y listar libros utilizando JPA o JDBC como tecnología de persistencia.


Notas aclaratorias:

-No es necesario recurrir a la estética de las vistas solo el crud funcional.

-La idea es realizarlo con un solo servlet pero puedes utilizar los servlets que quieras si se dificulta la implementación con uno solo.

-Es un plus agregar en alguna vista un buscador de libro por ISBN

-No utilizar creadores de controladoras JPA la idea es que puedan crear estos controladores codeándolos desde 0.

## Dependencias que se cargaron para el proyecto:

<dependency>
  <groupId>javax.servlet</groupId>
  <artifactId>javax.servlet-api</artifactId>
  <version>3.1.0</version>
</dependency>
<dependency>
  <groupId>com.github.gwenn</groupId>
  <artifactId>sqlite-dialect</artifactId>
  <version>0.1.0</version>
</dependency>
<dependency>
  <groupId>org.xerial</groupId>
  <artifactId>sqlite-jdbc</artifactId>
  <version>3.36.0.3</version>
</dependency>
<dependency>
  <groupId>org.hibernate</groupId>
  <artifactId>hibernate-core</artifactId>
  <version>5.6.14.Final</version>
</dependency>
