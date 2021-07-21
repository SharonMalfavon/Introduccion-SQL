CREATE SCHEMA mi_blog;

CREATE TABLE mi_blog.usuarios(

    id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email  VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)

);


CREATE TABLE mi_blog.categorias(
   id INT AUTO_INCREMENT NOT NULL,
   nombre VARCHAR (100) NOT NULL,

   CONSTRAINT pk_categorias PRIMARY KEY(id)

);
   

CREATE TABLE mi_blog.entradas(
    id INT AUTO_INCREMENT NOT NULL,
    usuario_id INT NOT NULL,
    categoria_id INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    description text,
    fecha DATE NOT NULL,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)

);





