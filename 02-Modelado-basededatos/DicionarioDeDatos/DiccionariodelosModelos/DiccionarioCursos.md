# 📘 Diccionario de Datos – Cursos

## Tabla Estudiante

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Estudiante`   |  INT         | -      | ✅ | ❌ | ❌ | ✅ | -         | -           | Identidicador del Estudiante    |
| `Nombre`          |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Nombre del Estudiante           |
| `PrimerApellido`  |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Primer apellido del Estudiante  |
| `SegundoApellido` |  nVarchar    | 20     | ❌ | ❌ | ❌ | ✅ | -         | -           | Segundo apellido del Estudiante |
| `NomPila`         |  nVarchar    | 15     | ❌ | ❌ | ❌ | ✅ | -         | -           | Segundo nombre del Estudiante   |
| `Matricula`       |  nVarchar    | 15     | ❌ | ❌ | ❌ | ✅ | -         | -           | Matricula del Estudiante        |

## Tabla Curso

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Curso`  | INT      | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Identidicador del Curso |
| `Nombre`    | Nvarchar | 20    | ✅  | ❌ | ❌ | ✅ | -         | -           | Nombre del Curso        |
| `Codigo`    | INT      | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Codigo del curso        |
| `NumCurso`  | INT      | -     | ✅  | ❌ | ❌ | ✅ | -         | -           | Numero del curso        |

## Tabla Inscripion

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `Id_Alumno`  | INT      | -     | ❌ | ✅ | ❌ | ✅ | -         | -           | Identidicador del libro |
| `Id_Curso`   | INT      | -     | ❌ | ✅ | ❌ | ✅ | -         | -           | Identidicador del Curso |