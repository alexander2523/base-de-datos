-- Crear bd
CREATE DATABASE bdMorgan;
GO

USE bdMorgan;
GO

CREATE TABLE empleado(
	IdEmpleado int not null identity(1,1),
	Nombre varchar(20) not null,
	Apellido1 varchar(20) not null,
	Apellido2 varchar(20) not null,
	edad int not null,
	estatus char(1) not null default 'A',
	IdDepto int not null,
);
GO

ALTER TABLE Empleado
ADD jef int;
GO

-- Restricciones
ALTER TABLE Empleado
ADD CONSTRAINT pk_empleado
PRIMARY KEY (IdEmpleado)
GO

ALTER TABLE Empleado
ADD CONSTRAINT chk_edad
CHECK (edad between 18 and 60)
Go

ALTER TABLE Empleado
ADD CONSTRAINT fk_Empleado_EmplJefe
FOREIGN KEY (jef)
REFERENCES Empleado(IdEmpleado)
GO


-- Crear tabla departamento 
CREATE TABLE Departamentos(
	IdDepart int not null identity (1,1),
	NombreDepto varchar(20) not null,
	IdEmpleado int not null,
	CONSTRAINT pk_depto
	PRIMARY KEY (IdDepart)
);
Go