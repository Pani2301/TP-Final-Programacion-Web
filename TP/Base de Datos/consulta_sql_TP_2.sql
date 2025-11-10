SHOW TABLES;

-- 1 (Muestra todos los usuarios)
SELECT * FROM `usuario`;

-- 2 (Limita a mostrar 3 Peliculas)
SELECT * FROM `pelicula` LIMIT 3;

-- 3 (Muestra los id de compra de la segunda funcion)
SELECT * FROM `compra` WHERE `id_funcion`=1;

-- 4 (Muestra los usuarios que tenga Fer en el apellido y que pueda tener mas cosas)
SELECT * FROM `usuario` WHERE `apellido` LIKE '%Fer%';

-- 5 (Seleccionar los usuarios con id 1 y 3 y entre 1 y 5)
SELECT * FROM `usuario` WHERE id IN (1, 3);
SELECT * FROM `usuario` WHERE id BETWEEN 1 AND 3;


-- 6 (Muestra los nombres de los usuarios con id 1 y 3 y entre 1 y 5)
SELECT `nombre` from `usuario` WHERE id IN (1, 5);
SELECT `nombre` from `usuario` WHERE id BETWEEN 1 and 5;


-- 7 (Junta las Tablas y selecciona la segunda compra)
SELECT * FROM `compra`
INNER JOIN `entrada` ON compra.id = entrada.id_compra
WHERE compra.id = 2;

-- 8 (Ver las butacas seleccionadas en la sala 1)
SELECT id_sala, butacas.codigo_butaca as numero_de_asiento FROM `butacas` INNER JOIN `entrada` 
ON entrada.id_butaca = butacas.id
where id_sala=1;

-- 9 (Cuanto gasto cada usuario)
SELECT usuario.nombre, 
usuario.apellido, 
SUM(compra.precio) as Total_Gasto 
FROM entrada
INNER JOIN compra ON entrada.id_compra = compra.id
INNER JOIN usuario ON compra.id_usuario = usuario.id
GROUP BY usuario.id
ORDER BY Total_Gasto DESC;



-- 10 (Cantidad de entradas vendidas de cada Pelicula)
SELECT pelicula.titulo, COUNT(entrada.id) as Cantidad_Entradas_Vendidas FROM `pelicula`
INNER JOIN funciones ON pelicula.id = funciones.id_pelicula
INNER JOIN compra ON funciones.id = compra.id_funcion
INNER JOIN entrada ON compra.id = entrada.id_compra
GROUP BY pelicula.titulo;

-- 11 (Cuanto recaudo cada Pelicula)
SELECT pelicula.titulo, SUM(compra.precio) AS Recaudacion_Total
FROM pelicula
INNER JOIN funciones ON pelicula.id = funciones.id_pelicula
INNER JOIN compra ON funciones.id = compra.id_funcion
INNER JOIN entrada ON compra.id = entrada.id_compra
GROUP BY pelicula.titulo
ORDER BY Recaudacion_Total DESC;

-- 12 (Usuarios que no compraron nada)
SELECT usuario.id, usuario.nombre, usuario.apellido
FROM usuario
LEFT JOIN compra ON usuario.id = compra.id_usuario
WHERE compra.id IS NULL;