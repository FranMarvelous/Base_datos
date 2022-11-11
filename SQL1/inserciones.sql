-- insertar datos en tablas
-- insert into nombre_tabla (nombre_col1, nombre_col2,...) values (valor1, valor2,...);
insert into directivos (nombre, apellido)
values ("Maggi","Fernandez");

insert into directivos (nombre, apellido)
values ("Rafa","Guerrero");

INSERT into directivos ( nombre, apellido) 
values ("Andres","Soto");

-- consultar datos de toda la tabla
select *
from directivos
where id = 4 -- filtrar dato solicitado
;
-- consultar datos especificos 
select nombre, id
from directivos;

-- borrar datos
DELETE FROM generationc2.directivos
	WHERE nombre='Rafa' AND id=4 AND apellido='Guerrero';
	
-- insertar mas de un registro 
insert into directivos (nombre, apellido)
values ("Laura", "miau"), ("Andrea","Montecinos");

-- ELIMINAR INFORMACION
-- elimina base de datos con tablas y todo
drop database nombrebasedato;

-- eliminar table y su contenido
drop table nombretabla;

-- eliminar el contenido de una tabla, sin eliminar la tabla
TRUNCATE table nombretabla;

TRUNCATE table directivos;

-- modificar una data en una columna especifica
-- update nombreTabla set nombreColumna= nuevoDato where CONDICION

update directivos set apellido = "Soto" where id = 3;

select * from directivos;

-- creando ALIAS
select d.nombre as first_name, id as rut
from directivos d; -- la d es el alias de directivos

-- filtrar
select d.id, d.nombre, d.apellido
from directivos d
where d.nombre = "andrea"
and d.apellido = "montecinos";

-- filtrar por parte de palabra/numero desde inicio; like coincidencias
select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like "an%"; -- anne, andrea, andres, etc...

-- filtrar por parte de la palabra desde el FINAL
select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like "%a"; 

-- filtrar por parte de la palabra desde CUALQUIER PARTE
select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like "%a%";


-- ------------------------------------
-- crear tabla
create table generationc2.cursos (
	id int not null auto_increment,
	nombre varchar(100) not null,
	cant_alumnos int not null,
	especialidad varchar(100) not null,
	primary key (id)
	)

-- agregar datos
	insert into cursos (nombre, cant_alumnos, especialidad)
	values ("cohorte 1",30,"java"),
	("cohorte 2",34,"java"),
	("cohorte 3",35,"java");

-- Agregar columna
-- 1. creacion de columna
alter table estudiantes
add cursoId INT;

-- 2. relacionar tablas
alter table estudiantes
add foreign key (cursoId) references cursos(id);
	
-- agregar datos a tablas de estudiante
insert into estudiantes (nombre, apellido, cursoId)
values ("Jhon","Doe",1),
("Jane","Doe",2),
("Ayun","Doe",2),
("Zoe","Doe",3);

-- visualizar
select * from estudiantes;