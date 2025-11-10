SHOW TABLES;

-- 1
SELECT * FROM `usuario`;

-- 2
SELECT * FROM `pelicula` LIMIT 3;

-- 3
SELECT * FROM `compra` WHERE `id_funcion`=1;

-- 4
SELECT * FROM `usuario` WHERE `apellido` LIKE '%Fer%';

-- 5
SELECT * FROM `usuario` WHERE id IN (1, 3);

SELECT * FROM `usuario` WHERE id BETWEEN 1 AND 3;


-- 6
SELECT `nombre` from `usuario` WHERE id IN (1, 5);
SELECT `nombre` from `usuario` WHERE id BETWEEN 1 and 5;

-- 7 
SELECT * FROM `compra`
INNER JOIN `entrada` ON compra.id = entrada.id_compra
WHERE compra.id = 2;

-- 8
SELECT butacas.codigo_butaca as numero_de_asiento FROM `butacas` INNER JOIN `entrada` 
ON entrada.id_butaca = butacas.id

-- 9
SELECT usuario.nombre, 
usuario.apellido, 
SUM(compra.precio) as Total_Gasto 
FROM entrada
INNER JOIN compra ON entrada.id_compra = compra.id
INNER JOIN usuario ON compra.id_usuario = usuario.id
GROUP BY usuario.id
ORDER BY Total_Gasto DESC;
------------------------------------------------
SELECT usuario.nombre, 
usuario.apellido, 
SUM(compra.precio) as Total_Gasto 
FROM entrada
INNER JOIN compra ON entrada.id_compra = compra.id
INNER JOIN usuario ON compra.id_usuario = usuario.id
GROUP BY usuario.id
HAVING Total_Gasto > 3000
ORDER BY Total_Gasto DESC;
------------------------------------------------


-- 10
SELECT pelicula.titulo, COUNT(entrada.id) as Cantidad_Entradas_Vendidas FROM `pelicula`
INNER JOIN funciones ON pelicula.id = funciones.id_pelicula
INNER JOIN compra ON funciones.id = compra.id_funcion
INNER JOIN entrada ON compra.id = entrada.id_compra
GROUP BY pelicula.titulo;



