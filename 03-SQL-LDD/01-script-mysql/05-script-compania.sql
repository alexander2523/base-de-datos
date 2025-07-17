CREATE DATABASE Compania
USE Compania

CREATE TABLE Estudiante (
  Id_Ssn INT NOT NULL AUTO_INCREMENT,
  PrimerNombre VARCHAR(20) NOT NULL,
  SegundoNombre VARCHAR(20) NOT NULL,
  Apellido VARCHAR(20) NOT NULL,
  Salario INT NOT NULL,
  Sexo VARCHAR(10) NOT NULL,
  PRIMARY KEY (Id_Ssn)
);


CREATE TABLE Departamento (
  Id_NumDepartamento INT NOT NULL AUTO_INCREMENT,
  NombreDepartamento VARCHAR(20) NOT NULL,
  Id_Ssn INT NOT NULL,
  FechaInicio DATE NOT NULL,
  PRIMARY KEY (Id_NumDepartamento),
  FOREIGN KEY (Id_Ssn) 
  REFERENCES Estudiante(Id_Ssn)
);

CREATE TABLE Dependiente (
  Id_Dependiente INT NOT NULL AUTO_INCREMENT,
  Id_Ssn INT NOT NULL,
  Nombre VARCHAR(20) NOT NULL,
  Sexo VARCHAR(15) NOT NULL,
  FechaNacimiento DATE NOT NULL,
  PRIMARY KEY (Id_Dependiente),
  FOREIGN KEY (Id_Ssn) 
  REFERENCES Estudiante(Id_Ssn)
);

CREATE TABLE Proyecto (
  Id_NumProyecto INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(30) NOT NULL,
  Ubicacion GEOMETRY NOT NULL,
  Id_NumDepartamento INT NOT NULL,
  PRIMARY KEY (Id_NumProyecto),
  FOREIGN KEY (Id_NumDepartamento) 
  REFERENCES Departamento(Id_NumDepartamento)
);

CREATE TABLE Trabajo (
  Id_Ssn INT NOT NULL,
  Id_NumProyecto INT NOT NULL,
  Horas DATETIME NOT NULL,
  PRIMARY KEY (Id_Ssn, Id_NumProyecto),
  FOREIGN KEY (Id_Ssn) 
  REFERENCES Estudiante(Id_Ssn),
  FOREIGN KEY (Id_NumProyecto) 
  REFERENCES Proyecto(Id_NumProyecto)
);