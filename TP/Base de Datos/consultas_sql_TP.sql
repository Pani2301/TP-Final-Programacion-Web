SHOW DATABASES;
use `base de datos ruba`;
SHOW TABLES;

-- USUARIOS
DESCRIBE `usuario`;
SELECT * FROM `usuario`;


INSERT INTO `usuario`
(id, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `contrasena`) 
VALUES
(NULL, 'Joaquin', 'Panichelli', '2006-06-30', 'joaquin@gmail.com', 'Joaquin1234');


--PELICULAS
DESCRIBE `pelicula`;
SELECT * FROM `pelicula`;


INSERT INTO `pelicula`
(id, `titulo`, `origen`, `genero`, `sinopsis`, `trailer`, `duracion`, `estado`)
VALUES
(NULL, 
'El Conjuro 4:ultimos ritos', 
'Gran Bretaña', 
'Terror', 
'Los productores James Wan y Peter Safran, el equipo de cineastas detrás de cada película del Universo Conjuring, regresan para The Conjuring: Last Rises, un capítulo más basado en los archivos de casos de la vida real de los investigadores paranormales Ed y Lorraine Warren, aunque el caso exacto de la nueva entrega se mantiene en secreto. Se espera que el dúo conformado por Patrick Wilson y Vera Farmiga, quienes han interpretado a los Warren en las tres películas anteriores, así como en el spin-off de Annabelle, regresen a los personajes.', 
'https://www.youtube.com/watch?v=nXObaGjH4Pc', 
120, 
'En cartelera');


DELETE FROM `pelicula` WHERE `id`=9;


-- SALAS
DESCRIBE `salas`;
SELECT * FROM `salas`;


INSERT INTO `salas`
(id, `capacidad`)
VALUES
(NULL, 66);


-- FUNCIONES
DESCRIBE `funciones`;
SELECT * FROM `funciones`;


INSERT INTO `funciones`
(id, `id_pelicula`, `id_sala`, `horario`)
VALUES
(NULL, 1, 1, '2024-07-01 20:00:00');


-- COMPRA
DESCRIBE `compra`;
SELECT * FROM `compra`;


INSERT INTO `compra`
(id, `id_funcion`, `id_usuario`, `precio`, `fecha_compra`)
VALUES
(NULL, 3, 4, 1500, '2024-07-28 13:00:00');


UPDATE `compra` SET `precio`=3000 WHERE `id`=1;


-- BUTACAS
DESCRIBE `butacas`;
SELECT * FROM `butacas`;


INSERT INTO `butacas`
(id, `id_sala`, `codigo_butaca`, `estado`, `precio`)
VALUES
(NULL, 1, 'A1', 'Disponible', 1500),
(NULL, 1, 'A2', 'Disponible', 1500),
(NULL, 1, 'A3', 'Disponible', 1500),
(NULL, 1, 'A4', 'Disponible', 1500),
(NULL, 1, 'A5', 'Disponible', 1500),
(NULL, 1, 'A6', 'Disponible', 1500),
(NULL, 1, 'A7', 'Disponible', 1500),
(NULL, 1, 'A8', 'Disponible', 1500);


-- ENTRADA
DESCRIBE `entrada`;
SELECT * FROM `entrada`;


INSERT INTO `entrada`
(id, `id_compra`, `id_butaca`)
VALUES
(NULL, 6, 163),
(NULL, 6, 164);


DELETE FROM `entrada` WHERE `id`=11;


-- CONSULTAS
DESCRIBE `consultas`;
SELECT * FROM `consultas`;


INSERT INTO `consultas`
(id, `id_usuario`, `mensaje`, `hora`)
VALUES
(NULL, 2, 'Tengo muchas ganas de ver la pelicula', '2024-06-30 10:00:00');

