-- 2.1
SELECT Apellidos 
FROM empleados;

-- 2.2
SELECT DISTINCT Apellidos 
FROM empleados;

-- 2.3
SELECT * FROM empleados 
WHERE Apellidos = 'Smith';

-- 2.4
SELECT * FROM empleados 
WHERE Apellidos IN('Smith', 'Rogers');

-- 2.5
SELECT * FROM empleados 
WHERE Departamento = 14;

-- 2.6
SELECT * FROM empleados 
WHERE Departamento IN (37, 77);

-- 2.7
SELECT * FROM empleados
WHERE Apellidos LIKE 'P%';

-- 2.8
SELECT Sum(Presupuesto) 
FROM departamentos;

-- 2.9
SELECT departamentos.nombre AS "Nombre Departamento", 
	(SELECT Count(*) 
    FROM empleados 
    WHERE empleados.departamento = departamentos.codigo) AS 'Numero Empleados' 
    FROM departamentos;

-- 2.10
SELECT d.*, e.*
FROM departamentos AS d 
INNER JOIN empleados AS e 
ON d.Codigo = e.Departamento;

-- 2.11
SELECT  e.Nombre,  e.Apellidos,  d.Nombre,  d.Presupuesto 
FROM empleados AS e 
INNER JOIN departamentos AS d 
ON d.Codigo = e.Departamento;

-- 2.12
SELECT e.Nombre, e.Apellidos, d.Presupuesto 
FROM empleados AS e 
INNER JOIN departamentos AS d 
ON d.Codigo = e.Departamento WHERE d.Presupuesto > 60000;

-- 2.13
SELECT * FROM departamentos 
WHERE Presupuesto > (SELECT AVG(Presupuesto) FROM departamentos );

-- 2.14
SELECT Nombre 
FROM departamentos 
WHERE 2 < ( SELECT Count(nombre)  
			FROM empleados 
            WHERE Departamento = Codigo);

-- 2.15
INSERT INTO departamentos (Codigo, Nombre, Presupuesto) VALUES (11, 'Calidad', 40000);

INSERT INTO empleados (Dni, Nombre, Apellidos, Departamento) VALUES ('89267109',  'Esther',   'Vázquez', 11);

-- 2.16
UPDATE departamentos 
SET Presupuesto = Presupuesto * 0.9 
WHERE CODIGO > 0;

-- 2.17
UPDATE empleados 
SET Departamento = 14 
WHERE Departamento = 77;

-- 2.18
DELETE FROM empleados 
WHERE Departamento = 14;

-- 2.19
DELETE FROM empleados 
WHERE Departamento IN (SELECT Codigo FROM departamentos WHERE Presupuesto > 60000);

-- 2.20
DELETE FROM empleados WHERE Departamento > 0;