-- crear tabla productos
CREATE TABLE generationc2.productos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	descripcion varchar(100) NOT NULL
);

-- agregarle columna
alter table productos
add valor_unitario int;

-- crear tabla pedidos
CREATE TABLE generationc2.pedidos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	fecha date NOT NULL,
	monto INT NOT null,
	cliente_id INT 
);

-- TABLA INTERMEDIA O RELACIONAL: pedidos_productos
-- id, fk tabla 1, fk tabla 2
-- id, pedido_id, producto_id
-- la creamos:
create table pedidos_productos(
id int primary key not null auto_increment,
pedido_id int not null, 
producto_id int not null,
foreign key (pedido_id) references pedidos(id),
foreign key (producto_id) references productos(id)
);

-- agregar 2 columnas más
alter table pedidos_productos
add cant_productos int,
add subtotal int;

-- crear 6 registros para productos
insert into productos (nombre, descripcion)
values ("Vodka_azul", "Sabor a coco y glitter"),
("Vodka_rojo", "Sabor a berries y glitter"),
("Daiquiri", "Sabor mango maracuya"),
("Margarita", "Sabor curacao y naranja"),
("Pisco_sour", "Sabor limon y frambuesa"),
("Kawaii", "Sabor a tiramisú y glitter")
;

-- crear registros para pedidos
insert into pedidos (fecha, monto)
values ('2022-11-09 16:30:00',15000);



