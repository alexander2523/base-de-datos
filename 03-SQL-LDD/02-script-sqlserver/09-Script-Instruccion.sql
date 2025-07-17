-- Creacion de Base de Datos bdintruccion

Create DATABASE bdIntruccion;

--Utiliza la base de datos

Use bdIntruccion;
GO

CREATE TABLE Instructor(
	Ssn int not null identity(1,1),
	Lname varchar(20) not null,
	Fname varchar(20) not null
	CONSTRAINT fk_Instructor
	PRIMARY KEY (Ssn),

);

CREATE TABLE Class(
	CourseNum int not null identity(1,1),
	[Year] int not null ,
	term nvarchar(20) not null,
	section nvarchar(20) not null,
	CONSTRAINT PK_Class
	Primary key (CourseNum, 
);