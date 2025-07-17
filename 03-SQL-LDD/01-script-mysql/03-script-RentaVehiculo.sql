CREATE DATABASE Rentavehiculo
USE Rentavehiculo
DROP TABLE Sucursal;
CREATE TABLE Sucursal (
  Id_Sucursal INT NOT NULL AUTO_INCREMENT,
  NombreSucursal VARCHAR(20) NOT NULL,
  Ubicacion VARCHAR(20) NOT NULL,
  PRIMARY KEY (Id_Sucursal)
);

CREATE TABLE Cliente (
  Id_Cliente INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(20) NOT NULL,
  Apellido1 VARCHAR(20) NOT NULL,
  Apellido2 VARCHAR(20) NOT NULL,
  CURP VARCHAR(18) NOT NULL UNIQUE,
  Telefono INT NOT NULL,
  NumeroCalle INT NOT NULL,
  Ciudad VARCHAR(20) NOT NULL,
  PRIMARY KEY (Id_Cliente)
);

CREATE TABLE Vehiculo (
  NumeroVehiculo INT NOT NULL AUTO_INCREMENT,
  Placa VARCHAR(7) NOT NULL UNIQUE,
  Marca VARCHAR(15) NOT NULL,
  Modelo VARCHAR(20) NOT NULL,
  Anio DATE NOT NULL,
  NumCliente INT NOT NULL,
  NumSucursal INT NOT NULL,
  PRIMARY KEY (NumeroVehiculo),
  FOREIGN KEY (NumCliente) 
  REFERENCES Cliente(Id_Cliente),
  FOREIGN KEY (NumSucursal) 
  REFERENCES Sucursal(Id_Sucursal)
);

CREATE TABLE Renta (
  id_vehiculo INT NOT NULL,
  id_cliente INT NOT NULL,
  FechaInicio DATE NOT NULL,
  FechaTermino DATE NOT NULL,
  TotalDias INT GENERATED ALWAYS AS (DATEDIFF(FechaTermino, FechaInicio)) STORED,
  PRIMARY KEY (id_vehiculo, id_cliente, FechaInicio),
  FOREIGN KEY (id_Vehiculo) 
  REFERENCES Vehiculo(NumeroVehiculo),
  FOREIGN KEY (id_cliente) 
  REFERENCES Cliente(Id_Cliente)
);
