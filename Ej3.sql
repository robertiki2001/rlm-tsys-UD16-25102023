-- 4.1
SELECT Nombre FROM peliculas;

-- 4.2
SELECT DISTINCT CalificacionEdad FROM peliculas WHERE CalificacionEdad IS NOT NULL;

-- 4.3
SELECT * FROM peliculas WHERE CalificacionEdad IS NULL;

-- 4.4
SELECT Nombre FROM salas WHERE Pelicula IS NULL;

-- 4.5
SELECT * FROM salas LEFT JOIN peliculas ON salas.Pelicula = peliculas.Codigo;

-- 4.6
SELECT * FROM salas RIGHT JOIN peliculas ON salas.Pelicula = peliculas.Codigo;

-- 4.7
SELECT Nombre FROM peliculas WHERE Codigo NOT IN (SELECT Pelicula FROM salas WHERE Pelicula IS NOT NULL);

-- 4.8
INSERT INTO peliculas VALUES(15, 'Uno, Dos, Tres', 7);

-- 4.9
UPDATE peliculas SET CalificacionEdad = 13 WHERE CalificacionEdad IS NULL;

-- 4.10
DELETE FROM salas WHERE Pelicula IN (SELECT Codigo FROM peliculas WHERE CalificacionEdad = 'PG');