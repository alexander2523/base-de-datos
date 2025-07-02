# 📘 Diccionario de Datos – Compañia

## Tabla Employee

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Ssn`     | INT        | -     | ✅ | ❌ | ❌ | ✅ | -         | -           | Identidicador del libro         |
| `Firstname`  | nVarchar   | 20    | ❌ | ❌ | ❌ | ✅ | -         | -           | Nombre del Estudiante           |
| `SecondName` | nVarchar   | 20    | ❌ | ❌ | ❌ | ✅ | -         | -           | Primer apellido del Estudiante  |
| `LastName`   | nVarchar   | 20    | ❌ | ❌ | ❌ | ✅ | -         | -           | Segundo apellido del Estudiante |
| `Salary`     | INT        | -     | ❌ | ❌ | ❌ | ✅ | -         | -           | Identidicador del libro         |
| `Sex`        | nVarchar   | 10    | ❌ | ❌ | ❌ | ✅ | -         | -           | Identidicador del libro         |

## Tabla Department

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NameDepartmen`      | nvarchar  | 20    | ❌  | ❌ | ❌ | ✅ | -         | -           | Nombre del departamento        |
| `Id_NumberDeparment` | INT       | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Identidicador del departamento |
| `Id_Ssn`             | INT       | -     | ❌  | ✅ | ❌ | ✅ | -         | -           | Identidicador del libro        |
| `Stardate`           | Date      | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Fecha de inicio de trabajo     |

## Tabla Dependent

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Dependent` | INT       | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Identidicador del dependiente       |
| `Id_Snn`       | INT       | -     | ❌  | ✅ | ❌ | ✅ | -         | -           | Identidicador del libro             |
| `Name`         | nVarchar  | 20    | ❌  | ❌ | ❌ | ✅ | -         | -           | Nombre del dependiente              |
| `Sex`          | nvarchar  | 15    | ❌  | ❌ | ❌ | ✅ | -         | -           | Genero del dependiente              |
| `Bithday`      | Date      | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Fecha de cumpliaños del dependiente |
## Tabla Project

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_NumberProject`    | INT       | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Identidicador del proyecto      |
| `Name`                | nvarchar  | 30    | ❌  | ❌ | ❌ | ✅ | -         | -           | Nombre del proyecto             |
| `Location`            | GEOMETRY  | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Lugar del proyecto              |
| `Id_NumberDepartment` | INT       | -     | ❌  | ✅ | ❌ | ✅ | -         | -           | Identidicador del departamento  |

## Tabla Word-on

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Ssn`           | INT       | -     | ❌  | ✅ | ❌ | ✅ | -         | -           | Identidicador del libro    |
| `Id_NumberProject` | INT       | -     | ❌  | ✅ | ❌ | ✅ | -         | -           | Identidicador del Proyecto |
| `Hours`            | DateTime  | -     | ❌  | ❌ | ❌ | ✅ | -         | -           | Horas trabajadas           |