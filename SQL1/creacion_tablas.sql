-- creacion de usuario desde aquí
CREATE USER 'francisca'@'localhost' IDENTIFIED BY 'Admin1234*';
-- entregando permisos de acceso
GRANT ALL PRIVILEGES ON *.* TO 'francisca'@'localhost' WITH GRANT OPTION;
-- persistir los privilegios al usuario
FLUSH PRIVILEGES;
-- creacion de usuario para acceso remoto
CREATE USER 'francisca'@'%' IDENTIFIED BY 'Admin1234*';

GRANT ALL PRIVILEGES ON *.* TO 'francisca'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- creacion de tablas desde aquí:
/*CREATE TABLE nombre_tabla(
	nombre_columna1 tipodato restricciones,
	nombre_columna2 tipodato restricciones,
	nombre_columna3 tipodato restricciones,

);
*/

CREATE TABLE generationc2.tecnicos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
);

-- MODIFICAR COLUMNA
/*ALTER TABLE generationc2.estudiante MODIFY COLUMN id INT primary key auto increment NOT NULL; */

CREATE TABLE generationc2.directivos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT null,
	
	primary key (id)
);


-- describir tabla
-- describe nombretabla;
describe estudiantes;

-- consultar los datos dentro de tabla
select * from directivos;
