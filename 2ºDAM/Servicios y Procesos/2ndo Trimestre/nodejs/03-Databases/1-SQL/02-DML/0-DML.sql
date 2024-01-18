-- Lenguaje de Manipulación de Datos (DML)
-- Los comandos DML se utilizan para manipular los datos almacenados en la base de datos.

/* Ejemplos de comandos DML:
   - SELECT: Para recuperar datos de una o varias tablas.
   - INSERT: Para agregar nuevos registros a una tabla.
   - UPDATE: Para modificar registros existentes en una tabla.
   - DELETE: Para eliminar registros de una tabla. SIEMPRE CON UN WHERE
   - MERGE: Para realizar operaciones de combinación (INSERT, UPDATE, DELETE) basadas en condiciones.
   - UPSERT (INSERT OR UPDATE): Para insertar un nuevo registro o actualizar uno existente dependiendo de si ya existe un registro con la clave especificada.
*/

-- Ejemplo SELECT:
SELECT nombre, edad
FROM usuarios
WHERE edad > 25;

-- Ejemplo INSERT:
INSERT INTO usuarios (id, nombre, edad)
VALUES (1, 'Juan', 30);

-- Ejemplo UPDATE:
UPDATE usuarios
SET edad = 31
WHERE nombre = 'Juan';

-- Ejemplo DELETE:
DELETE FROM usuarios
WHERE nombre = 'Juan';

-- Ejemplo MERGE:
MERGE INTO destino
USING origen
ON destino.id = origen.id
WHEN MATCHED THEN
  UPDATE SET destino.edad = origen.edad
WHEN NOT MATCHED THEN
  INSERT (id, nombre, edad) VALUES (origen.id, origen.nombre, origen.edad);

-- Ejemplo UPSERT:
INSERT INTO usuarios (id, nombre, edad)
VALUES (2, 'María', 28)
ON DUPLICATE KEY UPDATE edad = 28;