CREATE DATABASE Universidad

Use Universidad
CREATE TABLE Estudiante (
  Id_Estudiante INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  PrimerApellido VARCHAR(20) NOT NULL,
  SegundoApellido VARCHAR(20) NOT NULL,
  NomPila VARCHAR(15) NOT NULL,
  Matricula VARCHAR(15) NOT NULL UNIQUE,
  PRIMARY KEY (Id_Estudiante)
);

CREATE TABLE Curso (
  Id_Curso INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  Codigo INT NOT NULL UNIQUE,
  NumCurso INT NOT NULL UNIQUE,
  PRIMARY KEY (Id_Curso)
);

CREATE TABLE Inscripcion (
  Id_Alumno INT NOT NULL,
  Id_Curso INT NOT NULL,
  PRIMARY KEY (Id_Alumno, Id_Curso),
  FOREIGN KEY (Id_Alumno) 
  REFERENCES Estudiante(Id_Estudiante),
  FOREIGN KEY (Id_Curso) 
  REFERENCES Curso(Id_Curso)
);