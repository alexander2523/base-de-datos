CREATE DATABASE RentaVehiculos
USE RentaVehiculos

CREATE TABLE Sucursal(
Id_Sucursal int not null identity (1,1),
NombreSucursal varchar(20) not null,
Ubicacion varchar(20) not null,
CONSTRAINT Pk_Sucursal
PRIMARY KEY (Id_Sucursal)
);
GO

CREATE TABLE Vehiculo(
Id_Vehiculo int not null IDENTITY (1,1),
Placa int not null,
Marca VARCHAR (15) not null,
Anio Date not null,
Id_cliente int not null,
Id_Sucursal int not null,
CONSTRAINT pk_vehiculo 
PRIMARY KEY (Id_Vehiculo),
CONSTRAINT fk_vehiculo_cliente
FOREIGN KEY (Id_cliente)
REFERENCES Cliente (Id_Cliente),
CONSTRAINT fk_vehiculo_sucursal
FOREIGN KEY (Id_sucursal)
REFERENCES Sucursal(Id_Sucursal)
);

CREATE TABLE Cliente(
Id_Cliente int not null identity (1,1),
Nombre varchar (20) not null,
Apellido1 varchar (20) not null,
Apellido2 varchar (20) not null,
CURP varchar (18) not null,
Telefono int not null,
NumeroCalle int not null,
Ciudad varchar (20) not null,
CONSTRAINT pk_cliente
PRIMARY KEY (Id_Cliente)
);

CREATE TABLE Renta(
  NumeroVehiculo INT NOT NULL,
  NumCliente INT NOT NULL,
  FechaInicio DATE NOT NULL,
  FechaTermino DATE NOT NULL,
  TotalDias AS DATEDIFF(DAY, FechaInicio, FechaTermino),
  CONSTRAINT pk_renta PRIMARY KEY (NumeroVehiculo, NumCliente, FechaInicio),
  CONSTRAINT fk_renta_vehiculo FOREIGN KEY (NumeroVehiculo)
    REFERENCES Vehiculo(Id_Vehiculo),
  CONSTRAINT fk_renta_cliente FOREIGN KEY (NumCliente)
    REFERENCES Cliente(Id_Cliente)
);
GO