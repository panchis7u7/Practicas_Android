#DROP DATABASE cine;
CREATE DATABASE cine;
use cine;

CREATE TABLE horarios (
	id_horario INTEGER PRIMARY KEY auto_increment,
	horario TEXT NOT NULL
);

CREATE TABLE fechas (
	id_fecha INTEGER PRIMARY KEY NOT NULL auto_increment,
	fecha TEXT NOT NULL
);

CREATE TABLE fechashorarios (
	id_calendario INTEGER PRIMARY KEY auto_increment,
	id_fecha INTEGER NOT NULL,
	id_horario INTEGER NOT NULL,
	FOREIGN KEY (id_fecha) REFERENCES fechas(id_fecha) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (id_horario) REFERENCES horarios(id_horario) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE peliculas (
	id_pelicula INTEGER PRIMARY KEY auto_increment,
	titulo TEXT NOT NULL,
	imagen TEXT NOT NULL,
	cover TEXT NOT NULL,
	rating INT NOT NULL,
	director TEXT NOT NULL,
	duracion TEXT NOT NULL,
	genero TEXT NOT NULL,
	sinopsis TEXT NOT NULL
);

CREATE TABLE fechaspeliculas (
	id_pelicula INTEGER NOT NULL,
	id_calendario INTEGER NOT NULL,
	PRIMARY KEY (id_pelicula, id_calendario),
	FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (id_calendario) REFERENCES fechashorarios(id_calendario) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE compras (
	id_compra INTEGER PRIMARY KEY auto_increment,
	total REAL NOT NULL,
	noAsientos INTEGER,
	asientos TEXT,
	departamento TEXT NOT NULL,
	id_pelicula INTEGER,
	FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO horarios (horario) VALUES ('9:00');
INSERT INTO horarios (horario) VALUES ("10:00");
INSERT INTO horarios (horario) VALUES ("11:00");
INSERT INTO horarios (horario) VALUES ("12:00");
INSERT INTO horarios (horario) VALUES ("13:00");
INSERT INTO horarios (horario) VALUES ("14:00");
INSERT INTO horarios (horario) VALUES ("15:00");
INSERT INTO horarios (horario) VALUES ("16:00");
INSERT INTO horarios (horario) VALUES ("17:00");
INSERT INTO horarios (horario) VALUES ("18:00");
INSERT INTO horarios (horario) VALUES ("19:00");
INSERT INTO horarios (horario) VALUES ("20:00");

INSERT INTO fechas (fecha) VALUES ('24 Marzo');
INSERT INTO fechas (fecha) VALUES ('25 Marzo');
INSERT INTO fechas (fecha) VALUES ('26 Marzo');
INSERT INTO fechas (fecha) VALUES ('27 Marzo');
INSERT INTO fechas (fecha) VALUES ('28 Marzo');
INSERT INTO fechas (fecha) VALUES ('29 Marzo');
INSERT INTO fechas (fecha) VALUES ('30 Marzo');
INSERT INTO fechas (fecha) VALUES ('31 Marzo');

#Pelicula 1.
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,1);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,4);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,8);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,12);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,2);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,5);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,7);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,11);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,3);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,6);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,9);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,10);

#Pelicula 2.
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,1);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,4);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,8);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,12);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,2);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,5);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,7);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,11);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (7,3);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (7,6);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (7,9);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (7,10);

#Pelicula 3.
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (5,1);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (5,4);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (5,8);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (5,12);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,2);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,5);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,7);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (2,11);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,3);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,6);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,9);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (4,10);

#Pelicula 4.
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,1);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,4);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,8);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (6,12);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,2);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,5);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,7);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (1,11);

INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,3);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,6);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,9);
INSERT INTO fechashorarios (id_fecha, id_horario) VALUES (3,10);

INSERT INTO peliculas VALUES (1,"Godzilla vs Kong",
"https://upload.wikimedia.org/wikipedia/en/6/63/Godzilla_vs._Kong.png",
"https://i.blogs.es/3a35be/godzilla-kong/1366_2000.jpeg",
3.5, "Adam Wingard", "1h 53", "Accion",
"Kong y sus protectores emprenden un peligroso viaje para encontrar su verdadero hogar. Junto al viaje está Jia, una niña huérfana 
que tiene un vínculo único y poderoso con la poderosa bestia. Sin embargo, pronto se encuentran en el camino de un Godzilla enfurecido
mientras abre una franja de destrucción en todo el mundo.");

INSERT INTO peliculas VALUES (2,"John Wick 3: Parabellum",
"https://upload.wikimedia.org/wikipedia/en/thumb/9/94/John_Wick_Chapter_3_Parabellum.png/220px-John_Wick_Chapter_3_Parabellum.png",
"https://cinergiaonline.com/wp-content/uploads/2019/05/John-Wick-3-Parabellum.jpg", 4, "Chad Stahelski", "2h 23m", "Accion",
"John Wick es declarado excomulgado y se otorga una gran recompensa por él después de que asesina a un señor del crimen internacional. 
Se propone buscar ayuda para salvarse de sicarios despiadados y cazarrecompensas.");

INSERT INTO peliculas VALUES (3,"Avengers Endgame",
"https://static.wikia.nocookie.net/marvelcinematicuniverse/images/9/9b/Avenger_Endgame_Poster_Oficial.png/revision/latest/scale-to-width-down/1000?cb=20190326185910&path-prefix=es",
"https://i0.wp.com/hipertextual.com/wp-content/uploads/2019/04/hipertextual-mejores-trailers-semana-avengers-endgame-rey-leon-godzilla-2-2019907932.jpg?fit=1600%2C900&ssl=1",
4.0, "Joe Russo, Anthony Russo", "3h 2m", "Accion",
"Después de que Thanos, un señor de la guerra intergaláctico, desintegra la mitad del universo, los Vengadores deben reunirse y reunirse 
nuevamente para revitalizar a sus aliados derrotados y restablecer el equilibrio.");

INSERT INTO peliculas VALUES (4,"Avengers Endgame",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTvGNXRmC76GfZrgM7P_oY0nZqg00bsjC7E5zu4dZBReXiHD_kt",
"https://arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/IQBLLU2NYNCBZHEAYSAQFEZM2M.jpg", 3.0, "Ruben Fleischer", "2h 20m", "Accion",
"Mientras intenta derribar a Carlton, el director ejecutivo de Life Foundation, Eddie, un periodista, investiga experimentos de ensayos en humanos. 
Sin saberlo, se fusiona con un alienígena simbiótico con habilidades letales.");

INSERT INTO fechaspeliculas VALUES (1,1);
INSERT INTO fechaspeliculas VALUES (1,2);
INSERT INTO fechaspeliculas VALUES (1,3);
INSERT INTO fechaspeliculas VALUES (1,4);
INSERT INTO fechaspeliculas VALUES (1,5);
INSERT INTO fechaspeliculas VALUES (1,6);
INSERT INTO fechaspeliculas VALUES (1,7);
INSERT INTO fechaspeliculas VALUES (1,8);
INSERT INTO fechaspeliculas VALUES (1,9);
INSERT INTO fechaspeliculas VALUES (1,10);
INSERT INTO fechaspeliculas VALUES (1,11);
INSERT INTO fechaspeliculas VALUES (1,12);

INSERT INTO fechaspeliculas VALUES (2,13);
INSERT INTO fechaspeliculas VALUES (2,14);
INSERT INTO fechaspeliculas VALUES (2,15);
INSERT INTO fechaspeliculas VALUES (2,16);
INSERT INTO fechaspeliculas VALUES (2,17);
INSERT INTO fechaspeliculas VALUES (2,18);
INSERT INTO fechaspeliculas VALUES (2,19);
INSERT INTO fechaspeliculas VALUES (2,20);
INSERT INTO fechaspeliculas VALUES (2,21);
INSERT INTO fechaspeliculas VALUES (2,22);
INSERT INTO fechaspeliculas VALUES (2,23);
INSERT INTO fechaspeliculas VALUES (2,24);

INSERT INTO fechaspeliculas VALUES (3,25);
INSERT INTO fechaspeliculas VALUES (3,26);
INSERT INTO fechaspeliculas VALUES (3,27);
INSERT INTO fechaspeliculas VALUES (3,28);
INSERT INTO fechaspeliculas VALUES (3,29);
INSERT INTO fechaspeliculas VALUES (3,30);
INSERT INTO fechaspeliculas VALUES (3,31);
INSERT INTO fechaspeliculas VALUES (3,32);
INSERT INTO fechaspeliculas VALUES (3,33);
INSERT INTO fechaspeliculas VALUES (3,34);
INSERT INTO fechaspeliculas VALUES (3,35);
INSERT INTO fechaspeliculas VALUES (3,36);

INSERT INTO fechaspeliculas VALUES (4,37);
INSERT INTO fechaspeliculas VALUES (4,38);
INSERT INTO fechaspeliculas VALUES (4,39);
INSERT INTO fechaspeliculas VALUES (4,40);
INSERT INTO fechaspeliculas VALUES (4,41);
INSERT INTO fechaspeliculas VALUES (4,42);
INSERT INTO fechaspeliculas VALUES (4,43);
INSERT INTO fechaspeliculas VALUES (4,44);
INSERT INTO fechaspeliculas VALUES (4,45);
INSERT INTO fechaspeliculas VALUES (4,46);
INSERT INTO fechaspeliculas VALUES (4,47);
INSERT INTO fechaspeliculas VALUES (4,48);

SELECT * FROM peliculas;

SELECT fecha, horario FROM peliculas AS p
INNER JOIN fechaspeliculas AS fp ON fp.id_pelicula = 1
INNER JOIN fechashorarios as fh ON fh.id_calendario = fp.id_calendario
INNER JOIN fechas as f ON f.id_fecha = fh.id_fecha
INNER JOIN horarios as h ON h.id_horario = fh.id_horario
WHERE p.id_pelicula = 1;

SELECT fecha FROM peliculas AS p
INNER JOIN fechaspeliculas AS fp ON fp.id_pelicula = 1
INNER JOIN fechashorarios as fh ON fh.id_calendario = fp.id_calendario
INNER JOIN fechas as f ON f.id_fecha = fh.id_fecha
WHERE p.id_pelicula = 1;

SELECT horario FROM peliculas AS p
INNER JOIN fechaspeliculas AS fp ON fp.id_pelicula = 1
INNER JOIN fechashorarios as fh ON fh.id_calendario = fp.id_calendario
INNER JOIN horarios as h ON h.id_horario = fh.id_horario
INNER JOIN fechas as f ON f.id_fecha = fh.id_fecha
WHERE p.id_pelicula = 1 AND f.fecha IN ("16 Marzo");

SELECT p.id_pelicula, titulo, imagen, cover, rating, director, duracion, genero, sinopsis, fecha, horario FROM peliculas AS p
INNER JOIN fechaspeliculas AS fp ON fp.id_pelicula = p.id_pelicula
INNER JOIN fechashorarios as fh ON fh.id_calendario = fp.id_calendario
INNER JOIN fechas as f ON f.id_fecha = fh.id_fecha
INNER JOIN horarios as h ON h.id_horario = fh.id_horario