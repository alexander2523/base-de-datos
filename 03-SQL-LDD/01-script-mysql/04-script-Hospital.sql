CREATE DATABASE Hospital
USE Hospital

CREATE TABLE Doctor (
  Id_Doctor INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  Edad INT NOT NULL,
  Especialidad VARCHAR(20) NOT NULL,
  PRIMARY KEY (Id_Doctor)
);

CREATE TABLE Paciente (
  Id_Paciente INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  NomPila VARCHAR(20) NOT NULL,
  PrimerApellido VARCHAR(20) NOT NULL,
  Edad INT NOT NULL,
  Peso INT NOT NULL,
  Altura INT NOT NULL,
  PRIMARY KEY (Id_Paciente)
);

CREATE TABLE Atiende (
  Id_Paciente INT NOT NULL,
  Id_Doctor INT NOT NULL,
  Diagnostico VARCHAR(200) NOT NULL,
  Fecha DATE NOT NULL,
  PRIMARY KEY (Id_Paciente, Id_Doctor),
  FOREIGN KEY (Id_Doctor) 
  REFERENCES Doctor(Id_Doctor),
  FOREIGN KEY (Id_Paciente) 
  REFERENCES Paciente(Id_Paciente)
);