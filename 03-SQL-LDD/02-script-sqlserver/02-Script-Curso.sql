CREATE DATABASE CURSO
USE CURSO

CREATE TABLE ESTUDIANTE(
Id_Estudiante int not null identity(1,1),
nombre varchar (20) not null,
PrimerApellido varchar (20) not null,
SegundoApellido varchar(20) not null,
NomPila varchar(15) not null,
Matricula varchar(20) not null,
Constraint pk_estudiante
Primary key (Id_Estudiante)
);
GO

CREATE TABLE Curso(
Id_Curso INT NOT null IDENTITY (1,1),
Nombre varchar(20) not null, 
Codigo int not null,
NumCurso int not null,
Constraint Pk_Curso
PRIMARY KEY (Id_Curso)
);

CREATE TABLE Inscripcion(
Id_Alumno int not null,
Id_Curso int not null,
Constraint pk_incripcion 
Primary key (Id_Alumno,Id_Curso),
Constraint fk_inscripcion_estudiantes 
FOREIGN KEY (Id_Alumno)
REFERENCES Estudiante(Id_Estudiante),
Constraint fk_inscripcion_curso 
FOREIGN KEY (Id_Curso)
REFERENCES Curso(Id_Curso)
);
Go