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

-- creacion de primary key compuestas 

CREATE TABLE Tabla1(
	tabla1id1 int not null,
	tabla1id2 int not null,
	Nombre nvarchar(20) not null,
	CONSTRAINT pk_tabla1
	PRIMARY KEY (tabla1id1,tabla1id2)
);
GO

--Razon de cadinalidad 1:N
CREATE TABLE tabla2(
	tabla2id int not null identity(1,1),
	nombre varchar(20),
	tabla1id1 int,
	tabla1id2 int
	CONSTRAINT pk_tabla2
	PRIMARY KEY (tabla2id),
	CONSTRAINT fk_tabla2_tabla1
	foreign KEY (tabla1id1, tabla1id2)
	REFERENCES tabla1(tabla1id1,tabla1id2)
);
go

-- razon de cardinalidad 1:1
CREATE TABLE employee
(
	Id int not null identity(1,1),
	Nombre varchar(20) not null,
	Ap1 varchar(15) not null,
	Ap2 varchar(20),
	Sexo char(1) not null,
	Salario money not null,
	CONSTRAINT pk_employee
	PRIMARY KEY (Id),
	CONSTRAINT chk_Sexo2
	CHECK (Sexo in ('M','F')),
	CONSTRAINT chk_Salario
	CHECK(Salario>0.0)

);

GO
SELECT * FROM employee
CREATE TABLE Department(
	Id int not null identity(1,1),
	NombreProyecto varchar(20) not null,
	Ubicacion Varchar(15) not null,
	FechaInicio Date not null,
	IdEmployee int not null
	CONSTRAINT Pk_deparment
	PRIMARY KEY(Id),
	CONSTRAINT Unique_nombreproyecto
	UNIQUE (NombreProyecto),
	CONSTRAINT unique_idemployee
	UNIQUE (IdEmployee),
	CONSTRAINT fk_deparment_employee
	FOREIGN KEY (IdEmployee)
	REFERENCES Employee(Id)
);
Go
SElECT * FROM Department

CREATE TABLE Project(
	ProjectId int not null identity(1,1),
	Nameproject nvarchar(20) not null,
	CONSTRAINT pk_proyect
	PRIMARY KEY (projectId),
	CONSTRAINT unique_nameproject
	UNIQUE (nameproject)
);
GO

CREATE TABLE Work_ON(
	EmployeeId int not null,
	ProjectId int not null,
	Horas int not null,
	CONSTRAINT pk_Work_ON
	PRIMARY KEY (EmployeeId, ProjectId),
	CONSTRAINT fk_works_on_Employee
	FOREIGN KEY (EmployeeId)
	REFERENCES Employee(Id),
	CONSTRAINT fk_works_on_Project
	FOREIGN KEY (ProjectId)
	REFERENCES  Project(projectid)
);
GO

SELECT * FROM Work_ON