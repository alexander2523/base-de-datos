# 🧩 Tipos de Datos en SQL Server

| Tipo de Dato       | Descripción                                         | Características Principales                                                                 |
|--------------------|-----------------------------------------------------|---------------------------------------------------------------------------------------------|
| `INT`              | Entero de 4 bytes                                   | Rango: -2,147,483,648 a 2,147,483,647                                                      |
| `BIGINT`           | Entero de 8 bytes                                   | Rango: ±9 quintillones                                                                     |
| `SMALLINT`         | Entero de 2 bytes                                   | Rango: -32,768 a 32,767                                                                    |
| `TINYINT`          | Entero de 1 byte                                    | Rango: 0 a 255                                                                             |
| `DECIMAL(p,s)`     | Número fijo con precisión                           | Precisión hasta 38 dígitos                                                                 |
| `NUMERIC(p,s)`     | Igual a `DECIMAL`                                   | Usado para cálculos financieros                                                            |
| `FLOAT`            | Número de punto flotante de doble precisión         | Aproximado, 8 bytes, no exacto                                                             |
| `REAL`             | Punto flotante de precisión simple                  | Aproximado, 4 bytes                                                                        |
| `CHAR(n)`          | Cadena de longitud fija                             | Hasta 8000 caracteres                                                                      |
| `VARCHAR(n)`       | Cadena de longitud variable                         | Hasta 8000 o `MAX` caracteres                                                              |
| `TEXT`             | Texto largo (obsoleto)                              | Reemplazado por `VARCHAR(MAX)`                                                            |
| `DATE`             | Solo fecha (año, mes, día)                          | Precisión: 0001-01-01 al 9999-12-31                                                        |
| `DATETIME`         | Fecha y hora con precisión de 1/300 seg             | Hasta 3 decimales                                                                          |
| `DATETIME2`        | Fecha y hora mejorada                               | Precisión de hasta 7 decimales, mayor rango que `DATETIME`                                |
| `BIT`              | Booleano (0 o 1)                                     | Acepta `0`, `1` y `NULL`                                                                   |
| `BINARY(n)`        | Binario de longitud fija                            | Hasta 8000 bytes                                                                           |
| `VARBINARY(n)`     | Binario de longitud variable                        | Hasta 8000 o `MAX` bytes                                                                   |
| `UNIQUEIDENTIFIER` | Identificador global único (GUID)                   | Formato estándar para claves únicas                                                        |
| `XML`              | Almacena datos XML                                  | Compatible con funciones de consulta XML                                                   |
| `GEOGRAPHY`        | Coordenadas geográficas                             | Ideal para sistemas GIS (mapas, ubicación, etc.)                                           |