CREATE database Biblioteca
USE Biblioteca

);
CREATE TABLE Libro (
  NumLibro INT NOT NULL AUTO_INCREMENT,  
  Titulo VARCHAR(30) NOT NULL,          
  ISBN INT NOT NULL UNIQUE,              
  Cantidad INT NOT NULL,                 
  PRIMARY KEY (NumLibro)                 
);

#Tabla Lector
CREATE TABLE Lector (
  NumLector INT NOT NULL AUTO_INCREMENT,  
  Nombre NVARCHAR(20) NOT NULL,           
  PrimerApellido NVARCHAR(20) NOT NULL,   
  SegundoApellido NVARCHAR(20) NOT NULL,  
  NomPila NVARCHAR(15) NOT NULL,          
  NumMembresia INT NOT NULL UNIQUE,       
  PRIMARY KEY (NumLector)                 
);

CREATE TABLE Prestar (
  NumLector INT NOT NULL,  
  NumLibro INT NOT NULL,   
  PRIMARY KEY (NumLector, NumLibro),  
  FOREIGN KEY (NumLector) 
  REFERENCES Lector(NumLector),  
  FOREIGN KEY (NumLibro) 
  REFERENCES Libro(NumLibro)      
);


