--Usar SQL-LMD (Insert, Delete, Update, Select)

USE NORTHWND;
Go

SELECT * 
FROM Categories; 
GO

SELECT * 
FROM Products;
GO

SELECT * 
FROM Suppliers; 
GO

SELECT *
FROM Customers;
GO

SELECT *
FROM Employees;

SELECT *
FROM Shippers

SELECT *
FROM Orders;

SELECT * 
FROM [Order Details];

-- Proyeccion
SELECT CustomerID,CompanyName,City 
FROM Customers;

-- Alias de columna
SELECT CustomerID AS 'Numero Empleado', 
	   CompanyName  Empresa,
	   City AS CIUDAD,
	   ContactName AS [Nombre del contacto]
FROM Customers

--Alias de tablas
SELECT C.CustomerID AS [Numero de cliente],
		C.CompanyName AS [Empresa],
		C.ContactName AS [Nombre del contacto]
FROM Customers AS C

SELECT C.CustomerID AS [Numero de cliente],
		C.CompanyName AS [Empresa],
		C.ContactName AS [Nombre del contacto]
FROM Customers C;

-- Campo calculado
SELECT *, (UnitPrice*Quantity) AS [Total]
FROM [Order Details];

SELECT od.OrderID as [Nombre de Orden],
od.ProductID AS [Numero Producto],
od.UnitPrice AS [Cantidad],
od.Quantity AS [Total],
(UnitPrice*Quantity) AS [Total]
FROM [Order Details] AS od;

SELECT p.ProductID As [Numero],
	   p.ProductName AS [Nombre],
	   p.CategoryID AS [Categoria],
	   p.UnitPrice AS [Precio],
	   p.UnitsInStock AS [Cantidad de productos],
	   (p.UnitPrice*p.UnitsInStock) AS [Costo del inventario]
FROM Products AS p where CategoryID =2;

-- Seleccionar todos los productos que su categoria sea mayor a 40.3

SELECT p.ProductID AS [id],
	   p.ProductName AS [Nombre del producto],
	   p.UnitPrice AS [Precio del producto]
FROM Products AS p
WHERE p.UnitPrice>40.3;

-- selecionar todos lo productos donde la categoria ID sea Diferente a 3

SELECT p.ProductID AS [id],
p.ProductName AS [Nombre del producto],
	   p.UnitPrice AS [Precio del producto]
FROM Products AS p
WHERE p.CategoryID<>3;

--selecionar todas las ordenes que sean de brazil - Rio de Janeiro, mostrando solo
--el numero de orden la fecha de orden, el pais de envio, y la ciudad y su tranpostista 

SELECT Orde.OrderId AS [Id],
	   Orde.OrderDate As [Fecha de orden],	
	   Orde.ShipCountry AS [Pais],
	   Orde.ShipCity AS [CIUDAD],
	   Orde.ShipVia AS [Transportista],
	   Orde.ShipRegion AS o
FROM Orders AS Orde
WHERE Orde.ShipRegion is not null

-- Selecionar todas las ordenes enviadas a brazil alemania y mexico y con region
SELECT Orde.OrderId AS [Id],
	   Orde.OrderDate As [Fecha de orden],	
	   Orde.ShipCountry AS [Pais],
	   Orde.ShipCity AS [CIUDAD],
	   Orde.ShipVia AS [Transportista],
	   Orde.ShipRegion AS [Region]
FROM Orders AS Orde
WHERE (Orde.ShipCountry = 'Mexico' 
		or Orde.ShipCountry= 'Germany' 
		or Orde.ShipCountry = 'Brazil') 
		or Orde.ShipRegion is not null
ORDER BY Orde.ShipCountry ASC, Orde.ShipCity desc;

--Selecionar todas las ordenes de francia, alemania y argentina (Clausula in)

SELECT *
FROM Orders
Where ShipCountry 
in ('Germany' , 'France', 'Argentina')

--Selecionar todos los produtos descontinuados o con 
--precio mayor a 50 y ordenados por el precio (Mayor a menor)

Select * FRom Products

Select p.CategoryID, p.ProductName, p.Discontinued, p.UnitPrice
FROM Products AS P
WHERE p.Discontinued = 1 OR P.UnitPrice > 50
ORDER BY p.UnitPrice DESC
 