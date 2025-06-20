# Tipo de dato en SQLSERVER

---

## Tipos de Datos Numericos

TIPOS DE DATOS EN SQL SERVER
📌 Números
Enteros:

TINYINT: Entero pequeño (0 a 255)

SMALLINT: Entero corto (-32,768 a 32,767)

INT: Entero estándar (-2,147,483,648 a 2,147,483,647)

BIGINT: Entero largo

Decimales y Flotantes:

DECIMAL(p,s) / NUMERIC(p,s): Precisión exacta, usados para valores financieros

FLOAT: Número de punto flotante de doble precisión

REAL: Número de punto flotante de precisión simple

⏳ Fecha y Hora
DATE: Solo fecha

TIME: Solo hora

DATETIME: Fecha y hora combinadas

SMALLDATETIME: Fecha y hora con menor precisión

DATETIME2: Fecha y hora con mayor precisión

DATETIMEOFFSET: Fecha, hora y zona horaria

📝 Cadenas de Texto
CHAR(n): Cadena de longitud fija

VARCHAR(n): Cadena de longitud variable

TEXT: Texto largo (obsoleto)

NCHAR(n): Cadena fija Unicode

NVARCHAR(n): Cadena variable Unicode

NTEXT: Texto largo Unicode (obsoleto)

💾 Binarios
BINARY(n): Datos binarios fijos

VARBINARY(n): Datos binarios variables

IMAGE: Imagen o binario largo (obsoleto)

✅ Booleanos
BIT: 0, 1 o NULL

🧭 Identificadores únicos
UNIQUEIDENTIFIER: GUID (identificador global único)

🌐 Espaciales
GEOGRAPHY: Coordenadas geográficas (latitud/longitud)

GEOMETRY: Formas espaciales planas (puntos, líneas, polígonos)

🧾 JSON / XML
XML: Almacena datos estructurados en formato XML

JSON: No tiene tipo nativo (se usa NVARCHAR)

💰 Dinero
MONEY: Valor monetario de precisión fija

SMALLMONEY: Versión más pequeña de MONEY

🧪 Otros
CURSOR: Control de resultados fila por fila

TABLE: Tipo de datos en forma de tabla

SQL_VARIANT: Puede contener diferentes tipos

ROWVERSION / TIMESTAMP: Marca de tiempo única por fila

# 🗂 Tipos de Datos en SQL Server

## 📌 Números
- Enteros: TINYINT, SMALLINT, INT, BIGINT
- Decimales: DECIMAL, NUMERIC, FLOAT, REAL

## ⏳ Fechas y Horas
- DATE, TIME, DATETIME, SMALLDATETIME, DATETIME2, DATETIMEOFFSET

## 📝 Texto
- CHAR, VARCHAR, TEXT, NCHAR, NVARCHAR, NTEXT

## 💾 Binarios
- BINARY, VARBINARY, IMAGE

## ✅ Booleano
- BIT

## 🧭 Identificadores únicos
- UNIQUEIDENTIFIER

## 🌐 Espaciales
- GEOGRAPHY, GEOMETRY

## 🧾 XML / JSON
- XML (nativo)
- JSON (usar NVARCHAR)

## 💰 Dinero
- MONEY, SMALLMONEY

## 🧪 Otros
- CURSOR, TABLE, SQL_VARIANT, ROWVERSION/TIMESTAMP
