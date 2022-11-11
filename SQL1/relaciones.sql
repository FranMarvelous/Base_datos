-- ejercicio
/**
*1. Agregar tabla direcciones con:
*id, nombre, numero, ciudad
*
*2. Agregar a todas las tablas 
*la columna direccion (la relacion)
*
*3. agregar inserciones en las tablas
**/

-- 1.crear tabla
create table generationc2.direccion (
	id int not null auto_increment,
	nombre varchar(100) not null,
	numero varchar(100) not null,
	ciudad varchar(100) not null,
	primary key (id)
	);

-- insertar valores
	insert into direccion (nombre, numero, ciudad)
	values ("arturo prat","1450","santiago"), ("luis cruz","622","paine"), ("condor","1456","paine");
	


-- 2.- Relacionar a tablas
-- estudiantes:
alter table estudiantes
add direccion INT;

alter table estudiantes
add foreign key (direccion) references direccion(id);
-- administrativos:
alter table administrativos
add direccion INT;

alter table administrativos
add foreign key (direccion) references direccion(id);
-- directivos:
alter table directivos
add direccion INT;

alter table directivos
add foreign key (direccion) references direccion(id);
-- profesores:
alter table profesores
add direccion INT;

alter table estudiantes
add foreign key (direccion) references direccion(id);

-- 3. Inserciones a tablas
-- estudiantes:
insert into estudiantes (nombre, apellido, direccion)
values ("Fran","Lazo",1),
("Noah","Gonzalez",2);

-- administrativos
insert into administrativos (nombre, apellido, direccion)
values ("Jorge","Perez",3),
("Estefania","Gonzalez",2);

-- directivos:
insert into directivos (nombre, apellido, direccion)
values ("Arturo","Riquelme",1),
("Tamara","Basualto",2);

-- profesores:
insert into estudiantes (nombre, apellido, direccion)
values ("Román","López",3),
("Belen","Araya",1);



-- CLASES 09/11
create table proveedores(
	id INT primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar(100) not null
);
/*
 * proveedor
 * id nombre rut
 * 1  Fran SPA 01-9
*/

create table direcciones(
id INT primary key not null auto_increment,
calle varchar(100) not null,
numero int not null,
sector varchar(100) not null,
ciudad varchar(100) not null,
region varchar(100) not null,
codigo_postal int,
proveedor_id int not null
);
/*
 * id calle numero sector ciudad region codigo_postal
 */ 

alter table direcciones
add constraint fk_proveedores_id -- add constraint = agregando nombre a relacion entre la FK y la tabla, agregamos restriccion
foreign key (proveedor_id) references proveedores(id);

-- inserciones
-- a proveedores:
insert into proveedores (nombre,rut)
values ("Rebecco","18.391.486-0"),
("Noah","20.654.876-2"),
("Tamara","17.345.786-0");

-- a direcciones:
insert into direcciones (calle, numero, sector, ciudad, region, codigo_postal, proveedor_id)
values ("Arturo Prat", 1450, "Santiago", "Santiago", "RM", 897564, 1),
("Luis cruz", 622, "Paine", "Santiago", "RM", 456789, 2),
("José victorino lastarria", 43, "Santiago", "Santiago", "RM", 898690, 3);

-- insertar proveedor
insert into proveedores(nombre,rut)
values ("Roman","16.956.456-7");

select * from proveedores;
select * from direcciones;

-- SQL JOINS
select * from proveedores p
inner join direcciones d -- tipo relacion inner = encontrar registros en comun entre 2 o + tablas
on p.id = d.proveedor_id -- establecer relacion
where p.id = 1 -- filtro
;

-- traer datos especificos de las tablas
select d.id, d.calle, d.numero, p.nombre
from proveedores p
inner join direcciones d
on p.id = d.proveedor_id
where p.id = 1
;

ALTER TABLE mis_pokemones ADD id int primary key auto_increment NOT NULL; -- agregando columna ID a pokemones

-- relacionar mis_pokemones a pokemonesKanto
alter table pokemonesKanto 
add primary key(pokedex);

alter table mis_pokemones
add foreign key (pokedex) references pokemonesKanto(pokedex);

-- eliminar datos tabla
-- truncate mis_pokemones;
-- filtrar pokemones fuego tipo1
select *
from mis_pokemones m
inner join pokemonesKanto p
on m.id = p.pokedex
where p.tipo1 = "fuego";

-- tipo 1 y tipo 2 veneno
select *
from mis_pokemones m
inner join pokemonesKanto p
on m.id = p.pokedex
where p.tipo1 = "veneno"
and p.tipo2 = "veneno";

-- saber cuantos charizard hay
select *
from mis_pokemones m
inner join pokemonesKanto p
on m.id = p.pokedex
where p.nombre = "charizard"
;

-- cuantos pokemones de la era kanto tienen habilidad awa
select *
from mis_pokemones m
inner join pokemonesKanto p
on m.id = p.pokedex
where p.tipo1 = "agua";

-- cuantos pokemones capture en estacion central
select *
from pokemoneskanto p
inner join mis_pokemones m
on m.id = p.pokedex
where m.lugar = "Estacion Central";

-- pokemones capturados en lugares San%
select *
from pokemoneskanto p
inner join mis_pokemones m
on m.id = p.pokedex
where m.lugar = "san%";