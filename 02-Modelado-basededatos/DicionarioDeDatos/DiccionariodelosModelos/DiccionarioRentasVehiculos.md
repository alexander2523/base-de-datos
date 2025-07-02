# 📘 Diccionario de Datos – Renta de Vehiculos

## Tabla Sucursal

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumSucursal`      | INT          | -      | ✅  | ❌  | ❌   | ✅     |          | -           | Identidicador de sucursal   |
| `NombreSucursal`   | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ✅     |          | -           | Nombre de la Sucursal       | 
| `Ubicacion`        | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ✅     |          | -           | Ubicacion de Sucursal       |

## Tabla Vehiculo

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumeroVehiculo` | INT          | -      | ✅  | ❌  | ❌   | ✅     |            | -              | Identidicador Del vehiculo  |
| `Placa`          | NVARCHAR     | 7      | ❌  | ❌  | ❌   | ✅     |            | -              |Es el numero de la placa     |
| `Marca`          | NVARCHAR     | 15     | ❌  | ❌  | ❌   | ✅     |            | -              |Es la marca del vehiculo     |
| `Modelo`         | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ✅     |            | -              |Es el modelo del vehiculo    |
| `Anio`           | Date         | -      | ❌  | ❌  | ❌   | ✅     |            | -              |El anio del carro            |
| `NumCliente`     | int          | -      | ❌  | ✅  | ❌   | ✅     |            | -              |Identicador del cliente      |
| `NumSucursal`    | int          | -      | ❌  | ✅  | ❌   | ✅     |            | -              |Identicador de la Sucursal   |

## Tabla Cliente

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`   | INT          | -      | ✅  | ❌  | ❌   | ✅     |         | -                        | Identidicador Del cliente          |
| `Nombre`       | INT          | -      | ❌  | ❌  | ❌   | ✅     |         | -                        | Nombre del cliente                 |
| `Apellido1`    | nVarchar     | 20     | ❌  | ❌  | ❌   | ✅     |         | -                        | Primer Apellido del cliente        |
| `Apellido2`    | nVarchar     | 20     | ❌  | ❌  | ❌   | ✅     |         | -                        | Segundo apellido del cliente       |
| `CURP`         | nVarchar     | 18     | ❌  | ❌  | ❌   | ✅     |         | -                        | CURP Del cliente                   |
| `Telefono`     | INT          | -      | ❌  | ❌  | ❌   | ✅     |         | -                        | Telefono para contactar al cliente |
| `NumeroCalle`  | INT          | -      | ❌  | ❌  | ❌   | ✅     |         | -                        | Numero de la calle del cliente     |
| `Ciudad`       | nVarchar     | 20     | ❌  | ❌  | ❌   | ✅     |         | -                        | Ciudad del cliente                 |

## Tabla de Renta

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `FechaInicio`    | INT          | -      | ❌  | ❌  | ❌   | ✅     |             | -            | Fecha en que inicio la renta de vehiculo   |
| `FechaTermino`   | INT          | -      | ❌  | ❌  | ❌   | ✅     |             | -            | Fecha en que termina la renta del vehiculo |
| `Totaldias`      | INT          | -      | ❌  | ❌  | ❌   | ✅     |             | -            | Numero total de dias que tuvo el coche     |