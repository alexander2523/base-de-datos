
# Tipos de Datos en SQL Server y MySQL

## 🧩 Tipos de Datos en SQL Server

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

## 🐬 Tipos de Datos en MySQL

| Tipo de Dato       | Descripción                                         | Características Principales                                                                 |
|--------------------|-----------------------------------------------------|---------------------------------------------------------------------------------------------|
| `TINYINT`          | Entero muy pequeño                                  | Rango: -128 a 127 (con signo), 0 a 255 (sin signo)                                         |
| `SMALLINT`         | Entero pequeño                                      | Rango: ±32 mil                                                                              |
| `MEDIUMINT`        | Entero mediano                                      | Rango: ±8 millones                                                                          |
| `INT` o `INTEGER`  | Entero estándar                                     | Rango: ±2 mil millones                                                                      |
| `BIGINT`           | Entero grande                                       | Rango: ±9 quintillones                                                                      |
| `DECIMAL(p,s)`     | Número fijo con precisión                           | Se usa para dinero o datos exactos; precisión configurable                                  |
| `FLOAT(p,s)`       | Punto flotante (simple)                             | Aproximado, impreciso                                                                      |
| `DOUBLE` o `REAL`  | Punto flotante (doble)                              | Mayor precisión que `FLOAT`                                                                |
| `CHAR(n)`          | Cadena de longitud fija                             | Máx. 255 caracteres                                                                         |
| `VARCHAR(n)`       | Cadena de longitud variable                         | Máx. 65,535 caracteres (dependiendo del conjunto de caracteres)                           |
| `TEXT`             | Texto largo                                         | Hasta 65,535 caracteres                                                                    |
| `TINYTEXT`         | Hasta 255 caracteres                                | Usado para textos pequeños                                                                 |
| `DATE`             | Solo fecha                                          | Rango: 1000-01-01 a 9999-12-31                                                              |
| `DATETIME`         | Fecha y hora                                        | Precisión hasta microsegundos                                                              |
| `TIMESTAMP`        | Fecha y hora con zona UTC                           | Actualiza automáticamente si se configura                                                  |
| `TIME`             | Solo tiempo (hh:mm:ss)                              | Rango: -838:59:59 a 838:59:59                                                               |
| `YEAR`             | Año en formato de 4 dígitos                         | De 1901 a 2155                                                                             |
| `BOOLEAN`          | Alias de `TINYINT(1)`                               | Acepta `TRUE` y `FALSE`                                                                    |
| `BLOB`             | Binario grande                                      | Usado para archivos o imágenes                                                             |
| `ENUM`             | Conjunto de valores definidos                       | Muy útil para valores controlados (ej: 'Activo', 'Inactivo')                              |
| `SET`              | Lista de valores permitidos                         | Se pueden seleccionar múltiples valores de una lista predefinida                          |
| `JSON`             | Almacena datos en formato JSON                      | Disponible desde MySQL 5.7                                                                 |
