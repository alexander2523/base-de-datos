# 📘 Diccionario de Datos – Plantilla General

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `IdCliente`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | > 0                                        | -                                | Identificador del cliente               |
| `Nombre`        | VARCHAR      | 100    | ❌  | ❌  | ❌   | ❌     | Solo letras A-Z, longitud >= 3             | -                                | Nombre completo del cliente             |
| `Edad`          | INT          | -      | ❌  | ❌  | ❌   | ❌     | CHECK (Edad >= 18 AND Edad <= 120)         | -                                | Edad del cliente                        |
| `Correo`        | VARCHAR      | 150    | ❌  | ❌  | ❌   | ✅     | Formato de correo válido                   | -                                | Correo electrónico                      |
| `IdCiudad`      | INT          | -      | ❌  | ✅  | ❌   | ❌     | > 0                                        | Ciudades(IdCiudad)               | Ciudad a la que pertenece el cliente    |
