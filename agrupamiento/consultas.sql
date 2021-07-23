/*Consulta para obtener el numero de entradas por categoria*/
SELECT COUNT(titulo), categoria_id FROM entradas GROUP BY categoria_id;

SELECT COUNT(titulo) AS "Numero de entradas" categoria_id FROM entradas GROUP BY categoria_id;

/*Consulta agrupada con condiciones*/
/*Trae los titulos y cuentalos y las categorias id de la tabka entradas agrupadas por categoria id
cuando el numero de entradas sea mayor o igual a 4*/
SELECT COUNT(titulo) AS "Numero de entradas", categoria_id FROM entradas GROUP BY categoria_id 
HAVING COUNT(titulo) >=4;

/*AVG nos permite sacar el promedio de elementos numericos*/
SELECT AVG(id) AS "Promedio id" FROM entradas;
/*MAX nos permite obtener el numero mayor*/
SELECT MAX(id) AS "Maximo id" FROM entradas;
/*SUM nos permite sumar elementos numericos*/
SELECT SUM(id) AS "Suma de ids" FROM entradas;
/*MIN nos permite tener el numero menor*/
SELECT MIN (id) AS "Minimo id" FROM entradas;
/*Obtener el promedio de id de las entradas cuyo categoria id=1 */
SELECT AVG (id) AS "Promedio id" FROM entradas WHERE categoria_id = 1;