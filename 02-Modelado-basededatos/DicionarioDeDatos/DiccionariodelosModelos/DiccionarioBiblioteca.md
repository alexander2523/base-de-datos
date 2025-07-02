# 📘 Diccionario de Datos – Biblioteca

## Tabla Libro

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLibro`  | INT      | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Identidicador del libro |
| `Titulo`    | nVarchar | 30    | ❌  | ❌ | ❌ | ✅ | -         | -           | Titulo del libro        | 
| `ISBN`      | INT      | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Catalogar el libro      |
| `Cantidad`  | INT      | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Cantidades de libros    |

## Tabla Lector

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLector`       |  INT         | -      | ✅ | ❌ | ❌ | ✅ | -         | -           | Identidicador del Lector    |
| `Nombre`          |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Nombre del Lector           |
| `PrimerApellido`  |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Primer apellido del Lector  |
| `SegundoApellido` |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Segundo apellido del lector |
| `NomPila`         |  nVarchar    | 15     | ❌ | ❌ | ❌ | ✅ | -         | -           | Segundo nombre del lector   |
| `NumMembresia`    |  INT         | -      | ❌ | ❌ | ❌ | ✅ | -         | -           | Su numero de Membresia      |

## Tabla Prestar

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumLector`     | INT          | -      | ❌ | ✅ | ❌ | ✅ | -         | -           | Identidicador del Lector   |
| `NumLibro`      | INT          | -      | ❌ | ✅ | ❌ | ✅ | -         | -           | Identidicador del Libro    |
