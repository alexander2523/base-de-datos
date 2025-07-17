CREATE DATABASE Hospital
USE Hospital

CREATE TABLE Doctor(
Id_Doctor int not null Identity(1,1),
Nombre VARCHAR (20) not null,
Edad INT NOT NULL,
Especialidad varchar(20) not null,
CONSTRAINT pk_doctor 
PRIMARY KEY (Id_Doctor)
);
GO
DROP TABLE Paciente
CREATE TABLE Paciente(
Id_Paciente int not null IDENTITY (1,1),
Nombre varchar(20) not null,
NomPila Varchar(20) not null,
PrimerApellido varchar(20) not null,
Edad int not null,
Peso int not null,
Alturo int not null
Constraint pk_paciente
PRIMARY KEY (Id_Paciente)
);
GO

CREATE TABLE Atiende(
Id_Paciente int not null,
Id_Doctor int not null,
Diagnostico varchar(200) not null,
Fecha INT not null,
CONSTRAINT pk_Atiende
PRIMARY KEY (Id_Paciente,Id_Doctor),
CONSTRAINT Fk_atiende_doctor
FOREIGN KEY (Id_doctor) 
REFERENCES Doctor (Id_Doctor),
CONSTRAINT fk_atiende_paciente
FOREIGN KEY (Id_paciente)
REFERENCES Paciente (Id_Paciente)
);