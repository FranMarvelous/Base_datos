
-- query para inserción de registro
INSERT INTO generationc2.estudiantes (nombre,id,apellido)
	VALUES ('Ashley',5,'Frangipane');
-- query para eliminar registro	
DELETE FROM generationc2.estudiantes
	WHERE nombre='Ashley' AND id=5 AND apellido='Frangipane';
