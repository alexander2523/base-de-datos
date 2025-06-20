--crear la base de datos bdrestricciones
CREATE DATABASE bdretricciones;

--utilizar la base de datos bdrestricciones
use bdretricciones;

--Crear la tabla catergorias sin restricciones

CREATE TABLE categoria (
 categoria int,
 nombre nvarchar(50)
)
--revisar los datos de la tabla categoria
SELECT * FROM categoria;

--Agregar registros a la tabla categori
INSERT INTO categoria
VALUES (1, 'Carnes Frias');

INSERT INTO categoria
VALUES (2, 'Linea blanca');

INSERT INTO categoria
VALUES (1, 'Carnes Frias');
--Eliminar todos los datos de la ta
DELETE FROM	categoria;

--Eliminar la tabla Categoria
DROP TABLE categoria;

CREATE TABLE categoria(
 categoriaid int not null,
 nombrecategoria nvarchar(50) not null,
 Constraint pk_categoria
 primary key(categoriaid)

 )
 SELECT * FROM categoria;
INSERT INTO categoria
VALUES (1, 'Carnes Frias');

INSERT INTO categoria
VALUES (2, 'Linea blanca');

INSERT INTO categoria
VALUES (3, 'Dulces');

INSERT INTO categoria
VALUES (4, 'Dulces');
--Eliminar la tabla
CREATE TABLE categoria(
 categoriaid int not null,
 nombrecategoria nvarchar(50) not null,
 Constraint pk_categoria
 primary key(categoriaid),
 constraint unico_nombrecategoria
 unique(nombrecategoria)
 );
INSERT INTO categoria
VALUES (1, 'Carnes Frias');

INSERT INTO categoria
VALUES (2, 'Linea blanca');

INSERT INTO categoria
VALUES (3, 'Dulces');

INSERT INTO categoria
VALUES (4, 'Dulces');

--crear la tabla productos 
CREATE TABLE producto(
 productoid int not null,
 nombreproducto nvarchar(50) not null,
 precio money not null,
 existencia int not null,
 constraint pk_producto
 primary key(productoid),
 constraint unico_nombreproducto
 unique (nombreproducto),
 constraint chk_precio
 check (precio>=1 and precio<=3000),
 constraint chk_existencia
 check (existencia>0)

)
SELECT * FROM producto;

INSERT INTO producto
VALUES (1, 'Don julio', 3000, 56);

INSERT INTO producto
VALUES (2, 'Don julio2', 3000, 56);

INSERT INTO producto
VALUES (3, 'Don julio3', 3000, 56);

INSERT INTO producto
VALUES (4, 'Terrible Mezcal', 1, 56);

INSERT INTO producto
VALUES (5, 'Terrible Mezcalito', 1, 3001);

DELETE FROM producto;
DROP TABLE producto;

CREATE TABLE producto(
 productoid int not null,
 nombreproducto nvarchar(50) not null,
 precio money not null,
 existencia int not null,
 categoriaid int,
 constraint pk_producto
 primary key(productoid),
 constraint unico_nombreproducto
 unique (nombreproducto),
 constraint chk_precio
 check (precio>=1 and precio<=3000),
 constraint chk_existencia
 check (existencia>0)

)
INSERT INTO producto
VALUES(1, 'Mazapan', 10, 100, 3);

INSERT INTO producto
VALUES(2, 'Pirulin', 10, 100, null);

INSERT INTO producto
VALUES(3, 'transformer', 100, 450, 7);

DELETE producto;

DROP TABLE producto;

CREATE TABLE producto(
 productoid int not null,
 nombreproducto nvarchar(50) not null,
 precio money not null,
 existencia int not null,
 categoriaid int,
 constraint pk_producto
 primary key(productoid),
 constraint unico_nombreproducto
 unique (nombreproducto),
 constraint chk_precio
 check (precio>=1 and precio<=3000),
 constraint chk_existencia
 check (existencia>0),
 constraint fk_producto_categoria
 foreign key (categoriaid)
 references categoria(categoriaid)
)
SELECT * FROM producto

INSERT INTO producto
VALUES(1, 'Mazapan', 10, 100, 3);

INSERT INTO producto
VALUES(2, 'Pirulin', 10, 100, null);

INSERT INTO producto
VALUES(3, 'transformer', 100, 450, 7);