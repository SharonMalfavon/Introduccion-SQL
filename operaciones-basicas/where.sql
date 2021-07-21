/*WHERW nos permite seleccionar elementos especificos*/
SELECT nombre, email FROM usuarios WHERE id = 4;

SELECT * FROM usuarios WHERE email = "sharonmalfavon@gmail.com";

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

/*Ejemplos*/

/* Trae todos los usuarios que se hayan registrado en el año 2020*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR (fecha) = "2020";

/*Trae todos los usuarios que se hayan registrado en el año 2020 y 2021*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = "2020" OR YEAR(fecha) = "2021";

/*Traer todos los usuarios que se hayan registrado desde 2019*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= "2019";

/*Traer todos los usuarios que se hayan registrado en 2020*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != "2020" OR ISNULL(fecha);

/*Seleccionar registros por dos columnas*/
SELECT nombre, apellidos FROM usuarios WHERE email = "sharonmalfavon@gmail.com" AND password ="1234";

/*Elementos que contengan texto*/
/*si el % va delante del texto la palabra debe empezar con esa palabra o letra*/
/*si el % va detras del texto la palabra debe empezar con esa palabra o letra*/
SELECT * FROM usuarios WHERE nombre LIKE "%o%";


