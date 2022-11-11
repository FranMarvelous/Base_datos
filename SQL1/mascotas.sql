-- Crear tabla
CREATE TABLE generationc2.mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	Raza varchar(100) NOT null,
	edad INT not null
);

-- Insertar datos
insert into mascotas (nombre, raza, edad)
values ("Rebecco", "Gato",2), ("Kuno","Perro",3), ("Yuki","Gato",2), ("Sato","Gato",2);

-- consultando tabla
describe mascotas;