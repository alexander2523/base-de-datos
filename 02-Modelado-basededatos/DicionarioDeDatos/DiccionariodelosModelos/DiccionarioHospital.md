# 📘 Diccionario de Datos – Hospital

## Tabla Doctor

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Doctor`      | INT          | -      | ✅  | ❌  | ❌   | ✅     |-                                |-              | Identidicador del doctor         |
| `Nombre`         | nVarchar     | 20     | ❌  | ❌  | ❌   | ✅     |-                                |-             | Nombre del doctor                | 
| `Edad`           | INT          | -      | ❌  | ❌  | ❌   | ✅     |-                                |-              | Edad del doctor                  |
| `Especialidad`   | nVarchar     | -      | ❌  | ❌  | ❌   | ✅     |-                                |-              | en que se especialista el doctor |

## Tabla Paciente

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumPaciente`     | INT          | -     | ✅  | ❌  | ❌   |  ✅  |-                                |-          | Identificador del paciente
| `Nombre`          | nVarchar     | 20    | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Nombre del paciente
| `NombrePila`      | nVarchar     | 20    | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Segundo nombre del paciente
| `PrimerApellido`  | nVarchar     | 20    | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Primer Apellido del cliente
| `SegundoApellido` | nVarchar     | 20    | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Segundo Apellido del cliente
| `Edad`            | int          |       | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Edad del cliente
| `Peso`            | int          |       | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Peso del cliente
| `Altura`          | int          |       | ❌  | ❌  | ❌   |  ✅  |-                                |-          | Altura del cliente

## Tabla Atienda

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumPaciente` | INT          | -      | ❌  | ❌  | ✅   | ✅     |-                               |-           | Identificador del paciente            |
| `Id_Doctor`   | INT          | -      | ❌  | ❌  | ✅   | ✅     |-                               |-           | Identificador del doctor              |
| `Diagnostico` | INT          | -      | ❌  | ❌  | ❌   | ✅     |-                               |-           | Diagnostico que se le da al paciente  |
| `Fecha`       | INT          | -      | ❌  | ❌  | ❌   | ✅     |-                               |-           | Fecha en que se dara el diagnostico   |