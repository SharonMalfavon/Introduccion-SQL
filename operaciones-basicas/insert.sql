/*Insertar valores en una tabla*/

INSERT INTO usuarios VALUES(NULL, "Sharon ", "Malfavon Lemus", "sharonmalfavon@gmail.com", "1234", "2021-07-20");
INSERT INTO usuarios VALUES(NULL, "Jorge", "Mendes", "jorgemendes@gmail.com", "2324", "2021-07-20");
INSERT INTO usuarios VALUES(NULL, "Emilia", "Rosas Castillo", "emiliacastillo@outlook.com", "0908", "2021-07-20");

/*Insertar datos en ciertas columnas*/
INSERT INTO usuarios(fecha, password, nombre, apellidos, email) VALUES("2021-07-20", "1213", "Sandra", "Quiroz", "Jimenez", "sandraquiroz@gmail.com");