--Consultas avanzadas

SELECT p.Num_Pedido AS [Número de Pedido], 
	p.Importe AS [Total a Pagar], 
	c.Empresa AS [Cliente], 
	c.Limite_Credito AS [Límite de Crédito]
 FROM Pedidos AS p
 INNER JOIN 
 Clientes AS c
 ON p.Cliente = c.Num_Cli
 ORDER BY Importe DESC;
 GO

SELECT p.Num_Pedido AS [Número de Pedido], 
	p.Importe AS [Total a Pagar], 
	c.Empresa AS [Cliente], 
	c.Limite_Credito AS [Límite de Crédito]
 FROM Pedidos AS p
 INNER JOIN 
 Clientes AS c
 ON p.Cliente = c.Num_Cli
 WHERE Limite_Credito BETWEEN 25000 and 50000
 AND empresa like 'A%'
 ORDER BY Importe DESC;
 GO

 USE NORTHWND;

 --Seleccionar los productos incluyendo su categoria y el proveedor que lo surte

 SELECT ProductID, ProductName, UnitPrice, UnitsInStock, CategoryID, SupplierID
 FROM Products;
 GO


 SELECT ProductID AS [Número de Producto],
		ProductName AS [Nombre del Producto], 
		UnitPrice AS [Precio], 
		UnitsInStock AS [Existencia], 
		CategoryID AS [Categoria],
		SupplierID AS [Proveedor]
 FROM Products;
 GO


 SELECT *
 FROM Products
 INNER JOIN  Categories
 ON products.CategoryID = categories.CategoryID
 GO

 
 SELECT *
 FROM Products AS [Pr]
 INNER JOIN  Categories AS [ca]
 ON pr.CategoryID = ca.CategoryID
 GO


 SELECT pr.ProductID AS [Número del producto],
		pr.ProductName AS [Nombre del producto],
		pr.UnitPrice AS [Precio],
		pr.UnitsInStock AS [Existencia],
		ca.CategoryID AS [Categoria],
		su.CompanyName AS [Proveedor]
 FROM Products AS [Pr]
 INNER JOIN  Categories AS [ca]
 ON pr.CategoryID = ca.CategoryID
 INNER JOIN Suppliers AS [su]
 ON pr.SupplierID = su.SupplierID
 GO


  SELECT *
 FROM Products AS [Pr]
 INNER JOIN  Categories AS [ca]
 ON pr.CategoryID = ca.CategoryID
 INNER JOIN Suppliers AS [su]
 ON pr.SupplierID = su.SupplierID

 CREATE DATABASE pruebasjoins

 USE pruebasjoins

 SELECT *
 FROM Categorias

 SELECT *
 FROM Productos

 SELECT c.idcategoria, c.Nombre, p.nombreproducto, p.precio, p.idproducto
 FROM Categorias AS c
 INNER JOIN Productos AS p
 ON c.idcategoria = p.idcategoria


 --Mostrar todas las categorias que no tienen productos asignados

 SELECT c.idcategoria, c.Nombre, p.nombreproducto, p.precio, p.idproducto
 FROM Categorias AS c
 LEFT JOIN Productos AS p
 ON c.idcategoria = p.idcategoria
 WHERE p.idproducto is null;


 SELECT c.idcategoria, c.Nombre, p.nombreproducto, p.precio, p.idproducto
 FROM Categorias AS c
 RIGHT JOIN Productos AS p
 ON c.idcategoria = p.idcategoria
 WHERE c.idcategoria is null;

  
 SELECT c.idcategoria, c.Nombre, p.nombreproducto, p.precio, p.idproducto
 FROM Categorias AS c
 FULL JOIN Productos AS p
 ON c.idcategoria = p.idcategoria

 USE BDEJEMPLO2


 -- listar las oficinas y los nombres y puestos de sus jefes
 SELECT o.Oficina, r.Nombre, r.Puesto
 FROM Oficinas AS o
 INNER JOIN Representantes as r
 ON o.Jef = r.Num_Empl


 -- listar las oficinas y los nombres y puestos de sus jefes, con un objetivo superior a las 600,000
 SELECT o.Oficina, r.Nombre, r.Puesto, o.Objetivo
 FROM Oficinas AS o
 INNER JOIN Representantes as r
 ON o.Jef = r.Num_Empl
 WHERE o.Objetivo >600000


-- listar los pedidos, mostrando el numero de pedido, el importe y la descripción de los productos
 SELECT p.Num_Pedido, p.Importe,  prod.Descripcion
 FROM Pedidos AS p
 INNER JOIN Productos as prod
 ON p.Producto = prod.Id_producto 
 AND prod.Id_fab = p.Fab


 --Listar los pedidos superiores a 25000, incluyendo el numero de pedido, importe, el nombre 
 --del representante que tomo la nota del pedido y el nombre del cliente
 SELECT p.Num_Pedido AS [Número del pedido],
		p.Importe AS [Total],
		r.Nombre AS [Nombre del representante],
		c.Empresa AS [Nombre del cliente]
 FROM Pedidos AS p
 INNER JOIN Clientes as c
 ON p.Cliente = c.Num_Cli
 INNER JOIN Representantes as r
 ON r.Num_Empl = p.Rep
 WHERE p.Importe>25000


 --Listar los pediudos superiores a 25000, mostrando el numero de pedido
 --el nombre del cliente que lo encarga y el nombre del representante 
 --asignado al cliente
 SELECT p.Num_Pedido AS [Número de pedido],
		c.Empresa AS [Nombre del cliente], 
		r.Nombre AS [Nombre del representante]
 FROM Pedidos AS p
 INNER JOIN Representantes as r
 ON r.Num_Empl = p.Rep
 INNER JOIN Clientes as c
 ON p.Cliente = c.Num_Cli
 WHERE p.Importe>25000


 --Lista los pedidos superiores a 25000, mostrando el numero de pedido
 --el nombre del cliente que lo encargo, el representante del cliente y 
 --la oficina en la que trabaja el representante
  SELECT p.Num_Pedido AS [Número de pedido],
		c.Empresa AS [Nombre del cliente], 
		r.Nombre AS [Nombre del representante],
		o.Oficina AS [Oficina del representante]
 FROM Pedidos AS p
 INNER JOIN Clientes as c
 ON p.Cliente = c.Num_Cli
 INNER JOIN Representantes as r
 ON r.Num_Empl = p.Rep
 INNER JOIN Oficinas AS o
 ON o.Oficina=r.Oficina_Rep
 WHERE p.Importe>25000


 --Listar los nombre de los empleados y sus jefes
 SELECT sub.Nombre AS [Empleado],
		jefe.Nombre AS [Jefe]
 FROM Representantes AS [jefe]
 INNER JOIN Representantes sub
 ON jefe.Num_Empl=sub.Jefe

 --Consultas de agregado (Max, Min, AVG, COUNT[(*), COUNT(CAMPO))

 --¿Cual es el rendimiento medio de la cuota de los representantes?
 USE BDEJEMPLO2
  
 SELECT AVG(Cuota) AS [Rendimiento medio de las cuotas]
 FROM Representantes

 --¿Cual es la cuota mayor?
 SELECT MAX(Cuota) AS [Cuota Mayor]
 FROM Representantes

 --¿Cual es la cuota menor?
  SELECT MIN(Cuota) AS [Cuota Menor]
  FROM Representantes

  --¿Cual es la cuota menor y la cuota mayor?
  SELECT MIN(Cuota) AS [Cuota Menor],
  MAX(Cuota) AS [Cuota Mayor]
  FROM Representantes

  --Seleccionar la fecha de pedido más antigua
  SELECT MIN(Fecha_Pedido) AS [Fecha de pedido más antigua]
  FROM Pedidos

 
 --Calcular el rendimiento en ventas de los representantes
 SELECT 100*(Ventas/Cuota) AS [Rendimiento de ventas]
 FROM Representantes
 WHERE 100*(Ventas/Cuota) is not null


 --Calcular el rendimiento medio en ventas
 SELECT AVG(Ventas) AS [Rendimiento medio en ventas]
 FROM Representantes

 --Cuales son las cuotas y ventas totales de todos los representantes
 SELECT SUM(Cuota) AS [Cuotas totales],
		SUM(Ventas) AS [Ventas totales]
 FROM Representantes

 --Cual es el importe total de pedidos de Bruno Arteaga
 SELECT  r.Nombre, SUM(p.Importe) AS [Importe total de Bruno Arteaga]
 FROM Representantes AS r
 INNER JOIN Pedidos AS p
 ON r.Num_Empl = p.Rep
 WHERE r.Nombre = 'Bruno Arteaga'
 group by r.Nombre

 --Cuantos representantes exceden su cuota (COUNT)
 SELECT COUNT(Cuota)
 FROM Representantes
 WHERE Ventas > Cuota

 --Cuantos pedidos de mas de 25000 hay
 SELECT COUNT(Num_Pedido) AS [Número de pedidos]
 FROM Pedidos
 WHERE Importe > 25000

 --cuantos puestos tienen los representantes
 SELECT COUNT(DISTINCT Puesto) AS [PUESTOS]
 FROM Representantes

 --cual es el importe medio de los pedidos de cada uno de los representantes
 
 SELECT Nombre, AVG(Importe) AS [Importe Medio]
 FROM Pedidos AS p
 INNER JOIN Representantes AS r
 ON p.Rep = r.Num_Empl
 GROUP BY Nombre
 ORDER BY Nombre


 SELECT Nombre, AVG(Importe) AS [Importe Medio]
 FROM Pedidos AS p
 INNER JOIN Representantes AS r
 ON p.Rep = r.Num_Empl
 WHERE r.Nombre in ('Tomás Saz' , 'María Jiménez', 'Pablo Cruz')
 GROUP BY Nombre
 ORDER BY Nombre
 GO

 CREATE OR ALTER PROCEDURE sp_pruebaconsulta
 @fechaInicial date,
 @fechaFinal date

 AS 
 BEGIN 
 SELECT Nombre, AVG(Importe) AS [Importe Medio]
 FROM Pedidos AS p
 INNER JOIN Representantes AS r	
 ON p.Rep = r.Num_Empl
 WHERE Fecha_Pedido between @fechaInicial and @fechaFinal
 GROUP BY Nombre
 ORDER BY Nombre
 END

 exec sp_pruebaconsulta '1989-01-01', '1989-04-06'

 --cual es el rango de las cuotas asignadas de cada oficina (cuidad)
 SELECT o.Ciudad, MAX(r.Cuota), MIN(r.Cuota), (MAX(r.Cuota)-  MIN(r.Cuota)) AS [Rango]
 FROM Representantes AS r
 INNER JOIN Oficinas AS o
 ON o.Oficina = r.Oficina_Rep
 GROUP BY o.Ciudad, r.Nombre
 ORDER BY o.Ciudad


USE NORTHWND
/*
Seleccionar el ingreo total por cliente en 1997 y 
ordenado por el ingreso de forma descendente
*/
SELECT  c.CompanyName AS [Cliente ],
SUM(od.Quantity*od.UnitPrice * (1-od.Discount)) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE YEAR (o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY c.CompanyName DESC


SELECT  c.CompanyName AS [Cliente ],
SUM(od.Quantity*od.UnitPrice * (1-od.Discount)) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE DATEPART (yy,o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY c.CompanyName 

SELECT  c.CompanyName AS [Cliente ],
ROUND(SUM(od.Quantity*od.UnitPrice * (1-od.Discount)),2) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE YEAR (o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY 2 DESC


SELECT  c.CompanyName AS [Cliente ],
ROUND(SUM(od.Quantity*od.UnitPrice * (1-od.Discount)),2) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE YEAR (o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY ROUND(SUM(od.Quantity*od.UnitPrice * (1-od.Discount)),2) DESC


SELECT  c.CompanyName AS [Cliente ],
ROUND(SUM(od.Quantity*od.UnitPrice * (1-od.Discount)),2) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE YEAR (o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY [Ingreso Total] DESC


SELECT TOP 10 c.CompanyName AS [Cliente ],
ROUND(SUM(od.Quantity*od.UnitPrice * (1-od.Discount)),2) AS [Ingreso Total]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN Customers AS c
ON c.CustomerID = o.CustomerID
WHERE YEAR (o.OrderDate) = 1997
GROUP BY c.CompanyName 
ORDER BY [Ingreso Total] DESC


-- 2) Seleccionar los productos por categoria más vendidos (unidades), 
-- para alemania ordenados por categoria y dento de categoria por unidad de forma descendente

SELECT c.CategoryName AS [Categoria],
		p.ProductName AS [Producto],
		SUM(od.Quantity) AS [Unidades]
FROM [Order Details] AS od
INNER JOIN 
Orders AS o
ON o.OrderID = od.OrderID
INNER JOIN
Products AS p
ON p.ProductID = od.ProductID
INNER JOIN 
Categories AS c
ON c.CategoryID = p.CategoryID
WHERE o.ShipCountry = 'Germany'
GROUP BY c.CategoryName, p.ProductName
ORDER BY 1 ASC,  [Unidades] DESC

-- 3)Seleccionar empleados con más pedidos realizados por año, 
-- ordenados por año y por número de pedidos

SELECT YEAR(o.OrderDate) AS [Año],
       e.FirstName + ' ' + e.LastName AS [Empleado],
       COUNT(o.OrderID) AS [Número de Pedidos]
FROM Orders AS o
INNER JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY YEAR(o.OrderDate), e.FirstName, e.LastName
ORDER BY [Año] ASC, [Número de Pedidos] DESC