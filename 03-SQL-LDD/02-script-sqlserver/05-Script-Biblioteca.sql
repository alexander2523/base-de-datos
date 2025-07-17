CREATE database Biblioteca

USE Biblioteca

CREATE TABLE Libro (
  NumLibro INT NOT NULL IDENTITY(1,1),
  Titulo NVARCHAR(30) NOT NULL,
  ISBN INT NOT NULL UNIQUE,
  Cantidad INT NOT NULL,
  CONSTRAINT pk_libro PRIMARY KEY (NumLibro)
);
GO

-- Tabla Lector
CREATE TABLE Lector (
  NumLector INT NOT NULL IDENTITY(1,1),
  Nombre NVARCHAR(20) NOT NULL,
  PrimerApellido NVARCHAR(20) NOT NULL,
  SegundoApellido NVARCHAR(20) NOT NULL,
  NomPila NVARCHAR(15) NOT NULL,
  NumMembresia INT NOT NULL UNIQUE,
  CONSTRAINT pk_lector PRIMARY KEY (NumLector)
);


CREATE TABLE Prestar (
  NumLector INT NOT NULL,
  NumLibro INT NOT NULL,
  CONSTRAINT pk_prestar 
  PRIMARY KEY (NumLector, NumLibro),
  CONSTRAINT fk_prestar_lector 
  FOREIGN KEY (NumLector)
  REFERENCES Lector(NumLector),
  CONSTRAINT fk_prestar_libro 
  FOREIGN KEY (NumLibro)
  REFERENCES Libro(NumLibro)
);
GO

