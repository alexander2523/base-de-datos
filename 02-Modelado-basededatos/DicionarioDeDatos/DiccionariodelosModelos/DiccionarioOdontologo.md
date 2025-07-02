# 📘 Diccionario de Datos – Odontologia

## Tabla Paciente

| Campo             | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                        |
|-------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|------------------------------------|
| `Id_Paciente`     | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del paciente         |
| `Correo`          | NVARCHAR     | 100    | ❌  | ❌  | ❌   | ✅    | -                     | -            | Correo electrónico del paciente    |
| `CURP`            | NVARCHAR     | 18     | ❌  | ❌  | ❌   | ✅    | -                     | -            | CURP del paciente                  |
| `FechaN`          | DATE         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Fecha de nacimiento                |
| `NumSeguro`       | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Número de seguro                   |
| `Nombre`          | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre del paciente                |
| `PrimerApellido`  | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Primer apellido                    |
| `SegundoApellido` | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Segundo apellido                   |
| `Colonia`         | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Colonia de residencia              |
| `NumerodeCalle`   | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Número de calle                    |
| `Calle`           | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Calle de residencia                |

---

## Tabla AplicacionTratamiento

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a     | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|------------------|-------------------------------|
| `Id_Aplicacion` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -                | Identificador de la aplicación |
| `Fecha`         | DATE         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -                | Fecha de aplicación            |
| `Observacion`   | NVARCHAR     | 200    | ❌  | ❌  | ❌   | ❌    | -                     | -                | Observaciones                  |
| `Id_Paciente`   | INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | Paciente         | Paciente relacionado           |
| `Id_Tratamiento`| INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | Tratamiento      | Tratamiento aplicado           |
| `Id_Odontologo` | INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | Odontologo       | Odontólogo responsable         |

---

## Tabla Tratamiento

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                   |
|------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Tratamiento` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del tratamiento |
| `Nombre`         | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre del tratamiento        |
| `Duracion`       | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Duración en días              |
| `Costo`          | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Costo del tratamiento         |
| `Estatus`        | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Estado del tratamiento        |

---

## Tabla Odontologo

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Odontologo` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del odontólogo   |
| `Cedula`        | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ✅    | -                     | -            | Cédula profesional             |
| `Nombre`        | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre del odontólogo          |
| `Id_Cita`       | INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | Cita         | Cita asignada                  |

---

## Tabla Especialidad

| Campo                | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|----------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Especialidad`    | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la especialidad |
| `NombreEspecialidad` | NVARCHAR     | 100    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre de la especialidad      |

---

## Tabla Material

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Material`   | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del material     |
| `NombreMaterial`| NVARCHAR     | 100    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre del material            |
| `Stock`         | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Cantidad en stock              |
| `UnidadMedida`  | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Unidad de medida               |
| `Descripcion`   | NVARCHAR     | 200    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Descripción del material       |

---

## Tabla SesionesTratamiento

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Secciones`   | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la sesión     |
| `Fecha`          | DATE         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Fecha de la sesión             |
| `Observaciones`  | NVARCHAR     | 200    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Observaciones                  |
| `CuracionesReal` | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Curaciones realizadas          |

---

## Tabla Factura

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|--------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Factura` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la factura    |
| `Nombre`     | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Nombre del cliente             |
| `Duracion`   | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Duración del servicio          |
| `Costo`      | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Costo de la factura            |
| `Estatus`    | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Estado de la factura           |

---

## Tabla Consultorio

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Consultorio` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del consultorio  |
| `Piso`           | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Piso del consultorio           |
| `Numero`         | INT          | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Número del consultorio         |

---

## Tabla Cita

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Cita`       | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la cita       |
| `Estatus`       | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌    | -                     | -            | Estado de la cita              |
| `Motivo`        | NVARCHAR     | 100    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Motivo de la cita              |
| `Fecha`         | DATE         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Fecha de la cita               |
| `Hora`          | TIME         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Hora de la cita                |
| `Id_Odontologo` | INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | Odontologo   | Odontólogo asignado            |

---

## Tabla HistorialClinico

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Historial`  | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del historial    |
| `Fecha`         | DATE         | -      | ❌  | ❌  | ❌   | ❌    | -                     | -            | Fecha del registro             |
| `Diagnostico`   | NVARCHAR     | 200    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Diagnóstico clínico            |
| `Observaciones` | NVARCHAR     | 200    | ❌  | ❌  | ❌   | ❌    | -                     | -            | Observaciones adicionales      |

---

## Tabla Imagen

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a     | Descripción                    |
|----------------|--------------|--------|-----|-----|------|-------|-----------------------|------------------|-------------------------------|
| `Id_Imagen`    | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -                | Identificador de la imagen     |
| `Ruta`         | NVARCHAR     | -      | ❌  | ❌  | ❌   | ❌    | -                     | -                | Ruta de la imagen              |
| `Tipo`         | NVARCHAR     | -      | ❌  | ❌  | ❌   | ❌    | -                     | -                | Tipo de imagen                 |
| `Id_Historial` | INT          | -      | ❌  | ✅  | ❌   | ❌    | -                     | HistorialClinico | Historial clínico relacionado  |

---

## Tabla Esta

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Historial` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del historial    |
| `Id_Aplicacion`| INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la aplicación |

---

## Tabla Usa

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Consultorio`| INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del consultorio  |
| `Id_Odontologo` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del odontólogo   |

---

## Tabla Tiene

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|------------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Odontologo`  | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del odontólogo   |
| `Id_Especialidad`| INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la especialidad|

---

## Tabla Pago

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Aplicacion` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la aplicación |
| `Id_Pago`       | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del pago         |

---

## Tabla Utiliza (Tratamiento-Material)

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|-----------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Tratamiento`| INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del tratamiento  |
| `Id_Material`   | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del material     |

---

## Tabla Utiliza (Sesiones-Material)

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                    |
|---------------|--------------|--------|-----|-----|------|-------|-----------------------|--------------|-------------------------------|
| `Id_Sesiones` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador de la sesión     |
| `Id_Material` | INT          | -      | ✅  | ❌  | ❌   | ✅    | -                     | -            | Identificador del material     |