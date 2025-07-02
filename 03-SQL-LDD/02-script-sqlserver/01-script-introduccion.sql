-- lenguaje SQl-LMD (create, alter, drop)

-- Crear la base de datos empresaG2

CREATE DATABASE empresaG2;
GO

-- utilizar la base de datos
USE empresaG2;

-- Crear la tabla Categorias
CREATE TABLE Categorias
(
  CategoriaId int primary key,
  nombreCategoria nvarchar(30) not null unique
);
GO

CREATE TABLE Empleado
(
  EmpleadoId int not null identity(1,1),
  Nombre Nvarchar(20) not null,
  ApellidoPaterno nvarchar(15) not null,
  curp char(18) not null,
  telefono char(15),
  sexo char(1) not null,
  Activo bit not null,
  CONSTRAINT pk_empleado
  PRIMARY KEY(EmpleadoId),
  CONSTRAINT unique_curp
  UNIQUE (curp),
  CONSTRAINT chk_sexo
  CHECK (sexo in ('M', 'F' ))

);
GO

-- Insertar en categorias 
INSERT INTO Categorias (CategoriaId, nombreCategoria)
VALUES(1, 'Carnes Frias');

INSERT INTO Categorias (CategoriaId, nombreCategoria)
VALUES(2, 'Vinos y Licores');
GO

SELECT * FROM Categorias

--Insertar Empleado
INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, Activo)
VALUES ('Monico', 'Panfilo', 'sdsds', '231311', 'M', 1);
go
SElECT * FROM Empleado

INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, Activo)
VALUES ('Sarahi', 'Victorio', 'fsdfs', '231311', 'M', 1);
go
SElECT * FROM Empleado