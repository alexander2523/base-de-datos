/*
	===	BASE DE DATOS BDG2 ===
		realizar una base de satos con dos tablas 
		para ejemplificar el uso de SQL Server
*/
-- SQL-LDD
-- construir la base de datos dbg2
CREATE DATABASE bdg2;

--utilizar la base de datos
USE bdg2;

CREATE TABLE categoria(
	idcategoria int not null identity(1,1),
	categorianombre nvarchar(20) not null,
	constraint pk_categoria
	primary key (idcategoria)
);

CREATE TABLE producto(
	idproducto int not null, 
	productonombre nvarchar(20) not null,
	precio money not null, 
	existencia int not null,
	categoriaid int,
	constraint pk_producto
	primary key (idproducto),
	constraint fk_producto_categoria
	foreign key (categoriaid)
	references categoria(idcategoria)
);
-- SQL-LMD
-- Agregar registro
INSERT INTO categoria(categorianombre)
VALUES ('Lacteos');

INSERT INTO categoria(categorianombre)
VALUES ('Carnes frias'),
		('Vinos y licores');

--Seleccionar los datos de la tabla categoria
SELECT *
FROM categoria;

Select categorianombre
FROM categoria;

Select categorianombre
FROM categoria
WHERE categorianombre = 'Vinos y licores';

Select categorianombre
FROM categoria
WHERE idcategoria in (1,3);

Select categorianombre, idcategoria
FROM categoria
WHERE idcategoria = 1 or idcategoria = 3;

--Modificar un registro 
UPDATE categoria
SET categorianombre = 'Carnes Rojas'
Where idcategoria = 2;

SELECT *
FROM categoria

--Eliminar un registro
DELETE FROM categoria
WHERE idcategoria = 2;

--Insertar en producto
INSERT INTO producto
VALUES(1, 'Rancho viejo', 3450.5, 50, 3); 

Insert INTO producto(productonombre,existencia,precio,categoriaid,idproducto)
VALUES('Don Julio', 456, 43.2, 3, 2),
		('Leche Nido', 567,567.4, 3 , 3)
SELECT *
FROM producto


