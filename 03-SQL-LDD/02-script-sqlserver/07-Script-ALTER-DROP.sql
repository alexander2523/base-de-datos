-- CREAR BASE DE DATOS
CREATE DATABASE EmpresaCucha;

USE EmpresaCucha;
GO

--CREAR TABLA EMPLEADOS

CREATE TABLE empleados(

	IdEmpleado INT not null identity(1,1),
	Nombre varchar(100) not null,
	Puesto varchar(20) not null,
	FechaIngreso date,
	Salario decimal(10,2),
	CONSTRAINT PK_empleado
	PRIMARY KEY (IdEmpleado)
);
GO

-- Crear la tabla departamentos

CREATE TABLE departamentos (
	IdDepto int not null primary key,
	NombreDepto varchar(50)
);
GO
-- Agregar una columna a la tabla empleados
ALTER TABLE Empleados
ADD CorreoElectronico varchar(50) null;
GO

-- Modificar un tipo de dato del salario la tabla empleados 
ALTER TABLE Empleados
ALTER COLUMN Salario money not null;
GO

--Renombrar columna correoElectronico de la tabla empleados
EXECUTE sp_rename 'Empleados.CorreoElectronico','Email','COLUMN';
GO

-- Agregar columna a empleados para Foreingn key

ALTER TABLE Empleados
ADD IdDepto int;
GO

SELECT * FROM empleados

-- Agregar un CONTRAINT de Foreign key
ALTER TABLE Empleados
ADD	CONSTRAINT fk_empleados_depto
FOREIGN KEY (IdDepto)
REFERENCES departamentos(IdDepto)
GO

-- Agregar un contraint a salario
ALTER TABLE empleados
ADD CONSTRAINT chk_salario
CHECK (salario>=100 and salario<=10000);

--Agregar

-- Eliminar el CONSTRAINT de FOREINGN KEY
ALTER TABLE Empleados
DROP CONSTRAINT fk_empleados_depto;

--Eliminar la PRIMARY KEY de 
ALTER TABLE Empleados
DROP CONSTRAINT PK_empleado;


--Eliminar la PRIMARY KEY de empleados
ALTER TABLE departamentos
DROP CONSTRAINT [PK__departam__7AEC424E29719D16];

-- Eliminar columna
ALTER TABLE empleados
DROP COLUMN email;

-- Eliminar TABLA

DROP TABLE departamentos;
GO

DROP TABLE empleados;
Go