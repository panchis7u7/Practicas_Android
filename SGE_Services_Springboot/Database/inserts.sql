-- Esto no lo hice a mano... Automatice la generacion de los inserts con python en base a archivos JSON que contienen los datos de cada profesor, materia y horarios; Lo demas es copy paste bruh. 

INSERT INTO profesores VALUES (1, 'Mora Garcia Jorge');
INSERT INTO profesores VALUES (2, 'Huerta Cortes Andres Ivan');
INSERT INTO profesores VALUES (3, 'Pacheco Pimentel Efren de Jesus');
INSERT INTO profesores VALUES (4, 'Mora Tenorio Sandra');
INSERT INTO profesores VALUES (5, 'Gallegos Perez Joxim');
INSERT INTO profesores VALUES (6, 'Florian Ernesto Claudio Ernesto');
INSERT INTO profesores VALUES (7, 'Sanchez Vega Jorge');
INSERT INTO profesores VALUES (8, 'Florian Arenas Claudio Ernesto');
INSERT INTO profesores VALUES (9, 'Antolino Hernandez Anastacio');
INSERT INTO profesores VALUES (10, 'Amaro Flores Alejandro');
INSERT INTO profesores VALUES (11, 'Ortiz Ortiz Octavio Salud');
INSERT INTO profesores VALUES (12, 'Chavez Jacobo Victor Manuel');
INSERT INTO profesores VALUES (13, 'Rios Ponce Juan');
INSERT INTO profesores VALUES (14, 'Calderon Cortez Javier');
INSERT INTO profesores VALUES (15, 'Alcaraz Chaves Jesus Eduardo');
INSERT INTO profesores VALUES (16, 'Flores Tinoco Alma Lilia Deni');
INSERT INTO profesores VALUES (17, 'Morales Lopez Felipe');
INSERT INTO profesores VALUES (18, 'Lopez Torres Joel');
INSERT INTO profesores VALUES (19, 'Villagomez Cardenas Salvador Jonathan');
INSERT INTO profesores VALUES (20, 'Jimenez Murillo Jose Alfredo');
INSERT INTO profesores VALUES (21, 'Tapia Colin Luis Enrique');
INSERT INTO profesores VALUES (22, 'Blancas Martinez Monica Adriana');
INSERT INTO profesores VALUES (23, 'Lopez Ruiz Manuel');
INSERT INTO profesores VALUES (24, 'Hernandez Esquivel Jose Omar');
INSERT INTO profesores VALUES (25, 'Guzman Marines Raymundo');
INSERT INTO profesores VALUES (26, 'Manzo Mora Reynaldo');
INSERT INTO profesores VALUES (27, 'Robledo Torrecilla Eva Maria');
INSERT INTO profesores VALUES (28, 'Rodriguez Baltazar Margarita');
INSERT INTO profesores VALUES (29, 'Atienzo de la Cruz Mora Lizeth');
INSERT INTO profesores VALUES (30, 'Felix Escalona Samuel');
INSERT INTO profesores VALUES (31, 'Duran Ibarra Miguel Alberto');
INSERT INTO profesores VALUES (32, 'Martinez Rosiles Carol Aidee');
INSERT INTO profesores VALUES (33, 'Garcia Ramirez Maria del Carmen');
INSERT INTO profesores VALUES (34, 'Casimiro Linares Edgar');
INSERT INTO profesores VALUES (35, 'Ramos Diaz J. Guadalupe');
INSERT INTO profesores VALUES (36, 'Hernandez Lopez Hugo Fernando');
INSERT INTO profesores VALUES (37, 'Amauri Cortes Coria');
INSERT INTO profesores VALUES (38, 'Lara Barcenas Ruben');
INSERT INTO profesores VALUES (39, 'Viacava Breiding Fernando Pedro');
INSERT INTO profesores VALUES (40, 'Rojas Prospero Ireri Tsipekua');
INSERT INTO profesores VALUES (41, 'Millarez Torres Cristhian');
INSERT INTO profesores VALUES (42, 'Rodriguez Tapia Marco Alonso');
INSERT INTO profesores VALUES (43, 'Perez Arreola Cesar Alejandro');
INSERT INTO profesores VALUES (44, 'Vaca Astorga Jordi');
INSERT INTO profesores VALUES (45, 'Solis Robles Juan Javier');
INSERT INTO profesores VALUES (46, 'Vargas Lua Gabriela');
INSERT INTO profesores VALUES (47, 'Vasconcelos Duarte Jose Raul');
INSERT INTO profesores VALUES (48, 'NA');

INSERT INTO asignaturas VALUES (1,  'Analisis de Señales y Sistemas de Comunicacion', 'B5T1', 5, 5, 5, 97, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (2,  'Redes de Computadoras', 'B5T3', 5, 5, 4, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (3,  'Arquitectura de Computadoras', 'B5T5', 4, 5, 4, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (4,  'Bases de Datos Distribuidas', 'B5T4', 5, 5, 5, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (5,  'Taller de Ingenieria en Software', 'B5T6', 4, 5, 5, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (6,  'Administracion de Proyectos', 'B5T2', 5, 5, 4, 88, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (7,  'Actividades Complementarias', 'B9T1', 5, 7, 5, null, 'AD', 'AD', 'AD');
INSERT INTO asignaturas VALUES (8,  'Negocios Electronicos I', 'B7T5', 4, 7, 5, 100, '01', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (9,  'Sistemas Operativos II', 'B7T4', 5, 7, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (10, 'Introduccion a la Seguridad de la Informacion', 'B7T7', 5, 7, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (11, 'Desarrollo de Aplicaciones para Dispositivos Moviles', 'B7T2', 5, 7, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (12, 'Taller de Investigacion I', 'B7T3', 4, 7, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (13, 'Redes Emergentes', 'B7T1', 5, 7, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (14, 'Desarrollo Sustentable', 'B6T5', 5, 3, 4, 95, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (15, 'Matematicas para la Toma de Desiciones', 'B3T3', 5, 3, 3, 94, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (16, 'Laboratorio de Electricidad y Magnetismo', 'B3TA', 0, 3, 2, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (17, 'Estructura y Organizacion de Datos', 'B3T2', 5, 3, 3, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (18, 'Fundamentos de Base de Datos', 'B3T4', 5, 3, 3, 95, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (19, 'Electricidad y Magnetismo', 'B3T5', 4, 3, 2, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (20, 'Administracion Gerencial', 'B3T6', 4, 3, 3, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (21, 'Matematicas Discretas I', 'B1T3', 5, 1, 1, 70, 'R1', 'Evaluacion Regularizacion Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (22, 'Calculo Diferencial', 'B1T1', 5, 1, 1, 73, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (23, 'Fundamentos de Investigacion', 'B1T6', 4, 1, 1, 86, 'R1', 'Evaluacion Regularizacion Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (24, 'Fundamentos de Programacion', 'B1T2', 5, 1, 1, 93, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (25, 'Taller de Etica', 'B1T5', 4, 1, 1, 70, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (26, 'Introduccion a las TICs', 'B1T4', 3, 1, 1, 83, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (27, 'Seguridad en Redes', 'B9T7', 5, 9, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (28, 'Sistemas de Gestion de la Seguridad Informatica', 'B9T8', 5, 9, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (29, 'Ingenieria del Conocimiento', 'B8T4', 5, 9, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (30, 'Residencias Profesionales', 'B9T3', 10, 9, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (31, 'Programacion Orientada a Objetos', 'B2T2', 5, 2, 2, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (32, 'Algebra Lineal', 'B2T4', 5, 2, 2, 95, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (33, 'Probabilidad y Estadistica', 'B2T5', 5, 2, 2, 87, 'R1', 'Evaluacion Regularizacion Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (34, 'Calculo Integral', 'B2T1', 5, 2, 2, 90, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (35, 'Contabilidad y Costos', 'B2T6', 5, 2, 2, 89, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (36, 'Matematicas Discretas II', 'B2T3', 5, 2, 2, 95, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (37, 'Ingenieria de Software', 'B4T6', 4, 4, 4, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (38, 'Circuitos Electricos y Electronicos', 'B4T5', 5, 4, 3, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (39, 'Matematicas Aplicadas a Comunicaciones', 'B4T1', 5, 4, 3, 95, 'R1', 'Evaluacion Regularizacion Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (40, 'Programacion II', 'B4T2', 5, 4, 4, 98, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (41, 'Taller de Base de Datos', 'B4T4', 5, 4, 4, 100, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (42, 'Fundamentos de Redes', 'B4T3', 5, 4, 3, 98, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (43, 'Tecnologias Inalambricas', 'B6T6', 4, 6, 5, 94, 'O1', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (44, 'Telecomunicaciones', 'B6T1', 5, 6, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (45, 'Interaccion Humano Computadora', 'B7T6', 4, 6, 4, 99, '01', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (46, 'Programacion Web', 'B6T2', 5, 6, 5, 100, '01', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (47, 'Sistemas Operativos I', 'B6T4', 4, 6, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (48, 'Desarrollo de Emprendedores', 'B6T3', 5, 6, 4, 88, '01', 'Evaluacion Ordinaria Primera Vez', 'Curso Aprobado');
INSERT INTO asignaturas VALUES (49, 'Auditoria en Tecnologias de la Informacion', 'B8T2', 5, 8, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (50, 'Administracion y Seguridad de Redes', 'B8T1', 5, 8, 6, null, '', '', '');
INSERT INTO asignaturas VALUES (51, 'Computo en la Nube', 'B8T8', 5, 8, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (52, 'Negocios Electronicos II', 'B8T5', 5, 8, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (53, 'Taller de Investigacion II', 'B8T3', 5, 8, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (54, 'Servicio Social', 'B9T2', 10, 8, 0, null, '', '', '');
INSERT INTO asignaturas VALUES (55, 'Seguridad en Sistemas Operativos', 'B8T9', 5, 8, 0, null, '', '', '');


-- 1er Semestre.
INSERT INTO grupos VALUES (32, 21, 20, 'A', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (33, 22, 21, 'A', '17:00-18:00', '17:00-18:00', '17:00-18:00', '17:00-18:00', '17:00-18:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (34, 23, 22, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '', 'F6', 'F6', 'F6', 'F6', '');
INSERT INTO grupos VALUES (35, 24, 23, 'A', '18:00-19:00', '18:00-19:00', '18:00-19:00', '18:00-20:00', '', 'LC3', 'F6', 'F6', 'LC3', '');
INSERT INTO grupos VALUES (36, 25, 24, 'A', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', '', 'F6', 'F6', 'F6', 'F6', '');
INSERT INTO grupos VALUES (37, 26, 24, 'A', '19:00-20:00', '19:00-20:00', '19:00-20:00', '', '', 'F6', 'F6', 'F6', '', '');

-- 2do Semestre.
INSERT INTO grupos VALUES (43, 31, 25, 'A', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', 'LC2', 'LC2', 'F6', 'LC2', 'LC3');
INSERT INTO grupos VALUES (44, 32, 26, 'A', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (45, 34, 27, 'B', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', 'F5', 'F5', 'F5', 'F5', 'F5');
INSERT INTO grupos VALUES (46, 33, 28, 'A', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (47, 34, 29, 'A', '8:00-9:00', '8:00-9:00', '8:00-9:00', '8:00-9:00', '8:00-9:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (48, 32, 30, 'B', '8:00-9:00', '8:00-9:00', '8:00-9:00', '8:00-9:00', '8:00-9:00', 'F5', 'F5', 'F5', 'F5', 'F5');
INSERT INTO grupos VALUES (49, 36, 36, 'A', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (50, 35, 31, 'A', '12:00-13:00', '12:00-13:00', '12:00-13:00', '12:00-13:00', '12:00-13:00', 'F6', 'F6', 'F6', 'F6', 'F6');

-- 3er Semestre.
INSERT INTO grupos VALUES (21, 14, 12, 'A', '13:00-14:00', '13:00-14:00', '13:00-14:00', '', '13:00-14:00', 'K5', 'K5', 'K5', '', 'K5');
INSERT INTO grupos VALUES (22, 15, 13, 'A', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', 'F5', 'F5', 'F5', 'F5', 'F5');
INSERT INTO grupos VALUES (23, 19, 16, 'A', '18:00-19:00', '18:00-19:00', '', '', '', 'F5', 'F5', '', '', '');
INSERT INTO grupos VALUES (24, 17, 15, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', 'LC2', 'LC2', 'LC2', 'LC2', 'F2');
INSERT INTO grupos VALUES (25, 18, 5, 'A', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', 'LTW', 'LTW', 'F1', 'LTW', 'LTW');
INSERT INTO grupos VALUES (26, 19, 16, 'B', '', '', '18:00-19:00', '18:00-19:00', '', '', 'F5', 'F5', '', '');
INSERT INTO grupos VALUES (27, 14, 12, 'B', '15:00-16:00', '15:00-16:00', '15:00-16:00', '', '15:00-16:00', 'K5', 'K5', 'K5', '', 'K5');
INSERT INTO grupos VALUES (28, 17, 17, 'B', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', 'LC2', 'LC2', 'LC2', 'LC2', 'F2');
INSERT INTO grupos VALUES (29, 16, 14, 'AA', '', '', '17:00-19:00', '', '', '', '', 'LF2', '', '');
INSERT INTO grupos VALUES (30, 20, 18, 'A', '17:00-18:00', '17:00-18:00', '17:00-18:00', '17:00-18:00', '', 'F5', 'F5', 'F5', 'F5', '');
INSERT INTO grupos VALUES (31, 18, 19, 'B', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', 'LTW', 'LTW', 'LTW', 'LTW', 'F3');

-- 4to Semestre.
INSERT INTO grupos VALUES (51, 37, 32, 'A', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', 'F5', 'F5', 'F5', 'F5', '');
INSERT INTO grupos VALUES (52, 38, 33, 'A', '8:00-9:00', '', '8:00-9:00', '8:00-9:00', '', '', '', '', '', '');
INSERT INTO grupos VALUES (53, 38, 33, 'B', '7:00-8:00', '', '7:00-8:00', '7:00-8:00', '', 'F4', '', 'F4', 'F4', '');
INSERT INTO grupos VALUES (54, 39, 34, 'A', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', '', 'F5', 'F5', 'F5', 'F5', '');
INSERT INTO grupos VALUES (55, 39, 34, 'B', '12:00-13:00', '12:00-13:00', '12:00-13:00', '12:00-13:00', '', 'F6', 'F6', 'F6', 'F6', '');
INSERT INTO grupos VALUES (56, 40, 35, 'A', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', 'LC1', 'LC1', 'F5', 'LC1', 'LC1');
INSERT INTO grupos VALUES (57, 42, 36, 'A', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', 'F5', 'F5', 'LRD', 'F5', 'LRD');
INSERT INTO grupos VALUES (58, 42, 42, 'B', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', 'LRD', 'F5', 'F5', 'F5', 'LRD');
INSERT INTO grupos VALUES (59, 41, 17, 'A', '12:00-13:00', '12:00-13:00', '', '12:00-13:00', '12:00-13:00', 'LC3', 'LC3', '', 'LC3', 'LC3');
INSERT INTO grupos VALUES (60, 41, 37, 'B', '15:00-14:00', '15:00-14:00', '15:00-14:00', '15:00-14:00', '', 'LC1', 'LC1', 'LC1', 'LC1', '');

-- 5to Semestre.
INSERT INTO grupos VALUES (1, 3, 1, 'B', '10:00-11:00', '10:00-11:00', '', '', '', 'K7', 'K7', '', '', '');
INSERT INTO grupos VALUES (2, 1, 2, 'A', '', '13:00-14:00', '13:00-14:00', '13:00-14:00', '', '', 'F4', 'F4', 'F4', '');
INSERT INTO grupos VALUES (3, 2, 3, 'A', '', '11:00-13:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '', 'LRD', 'F3', 'F3', 'F3');
INSERT INTO grupos VALUES (4, 2, 1, 'B', '11:00-13:00', '12:00-13:00', '12:00-13:00', '12:00-13:00', '', 'LRD', 'K7', 'K7', 'K7', '');
INSERT INTO grupos VALUES (5, 3, 4, 'A', '', '16:00-17:00', '', '16:00-17:00', '', '', 'F3', '', 'F3', '');
INSERT INTO grupos VALUES (6, 4, 5, 'A', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', 'LC1', 'F3', 'LC1', 'F3', 'LC1');
INSERT INTO grupos VALUES (7, 5, 6, 'A', '18:00-19:00', '18:00-19:00', '18:00-19:00', '18:00-19:00', '', 'F3', 'F3', 'F3', 'F3', '');
INSERT INTO grupos VALUES (8, 6, 7, 'B', '', '18:00-19:00', '18:00-19:00', '18:00-19:00', '18:00-19:00', '', 'F4', 'F4', 'F4', 'F4');
INSERT INTO grupos VALUES (9, 1, 2, 'B', '13:00-14:00', '13:00-14:00', '', '13:00-14:00', '', 'F4', 'F3', '', 'F3', '');
INSERT INTO grupos VALUES (10, 6, 7, 'A', '17:00-18:00', '17:00-18:00', '17:00-18:00', '17:00-18:00', '', 'F3', 'F3', 'F3', 'F3', '');

--6to Semestre.
INSERT INTO grupos VALUES (61, 48, 39, 'B', '15:00-16:00', '15:00-16:00', '15:00-16:00', '16:00-16:00', '15:00-16:00', 'F4', 'F4', 'F4', 'F4', 'F4');
INSERT INTO grupos VALUES (62, 43, 40, 'A', '', '9:00-11:00', '', '9:00-11:00', '', '', 'F4', '', 'F4', '');
INSERT INTO grupos VALUES (63, 44, 41, 'A', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', 'F4', 'F4', 'F4', 'F4', 'LRD');
INSERT INTO grupos VALUES (64, 45, 42, 'A', '', '8:00-9:00', '8:00-9:00', '8:00-9:00', '8:00-9:00', '', 'F4', 'F4', 'F4', 'F4');
INSERT INTO grupos VALUES (65, 47, 24, 'B', '11:00-12:00','11:00-12:00','11:00-12:00','11:00-12:00','', 'F2','F2','F2','F2','');
INSERT INTO grupos VALUES (66, 46, 43, 'A', '9:00-10:00', '', '9:00-11:00', '', '9:00-11:00', 'LC2', '', 'LC3', '', 'LC3');
INSERT INTO grupos VALUES (67, 44, 40, 'B', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', '11:00-12:00', 'F4', 'F4', 'F4', 'F4', 'LRD');
INSERT INTO grupos VALUES (68, 47, 24, 'A', '12:00-13:00', '12:00-13:00', '12:00-13:00', '12:00-13:00', '', 'F5', 'F5', 'F5', 'F5', '');
INSERT INTO grupos VALUES (69, 48, 39, 'A', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', '7:00-8:00', 'F4', 'F4', 'F4', 'F4', 'F4');

-- 7mo Semestre.
INSERT INTO grupos VALUES (11, 7, 47, 'AD', '', '', '', '', '', '', '', '', '', '');
INSERT INTO grupos VALUES (12, 8, 8, 'A', '17:00-18:00', '17:00-18:00', '', '17:00-18:00', '17:00-18:00', 'F1', 'P1', '', 'F1', 'F3');
INSERT INTO grupos VALUES (13, 9, 46, 'A', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', '15:00-16:00', 'F1', 'F1', 'F1', 'F1', 'F1');
INSERT INTO grupos VALUES (14, 10, 9, 'A', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (15, 11, 10, 'A', '18:00-19:00', '18:00-20:00', '', '18:00-20:00', '', 'LIS', 'LIS', '', 'LIS', '');
INSERT INTO grupos VALUES (16, 12, 11, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '', 'F1', 'F1', 'F1', 'F1', '');
INSERT INTO grupos VALUES (17, 13, 1, 'A', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', '16:00-17:00', 'F1', 'F1', 'LRD', 'F1', 'LRD');
INSERT INTO grupos VALUES (18, 13, 1, 'B', '15:00-16:00','15:00-16:00','15:00-16:00','15:00-16:00','15:00-16:00', 'LRD','K5','LRD','K5','K5');
INSERT INTO grupos VALUES (19, 11, 10, 'B', '', '17:00-18:00', '18:00-20:00', '', '18:00-20:00', '', 'LIS', 'LIS', '', 'LIS');
INSERT INTO grupos VALUES (20, 10, 9, 'B', '12:00-13:00','12:00-13:00','12:00-13:00','12:00-13:00','12:00-13:00', 'K1','K1','K1','K1','K1');

-- 8vo Semestre.
INSERT INTO grupos VALUES (70, 49, 44, 'A', '14:00-15:00', '14:00:15:00', '14:00:15:00', '14:00:15:00', '14:00:15:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (71, 50, 38, 'A', '8:00-10:00', '8:00-10:00', '8:00-10:00', '', '8:00-10:00', 'LRD', 'F3', 'F3', '', 'F3');
INSERT INTO grupos VALUES (72, 51, 45, 'A', '12:00-13:00', '12:00:13:00', '12:00:13:00', '12:00-13:00', '12:00:13:00', 'F4', 'F4', 'F4', 'F4', 'F4');
INSERT INTO grupos VALUES (73, 49, 44, 'B', '14:00-15:00', '14:00:15:00', '14:00:15:00', '14:00:15:00', '14:00:15:00', 'F6', 'F6', 'F6', 'F6', 'F6');
INSERT INTO grupos VALUES (74, 52, 32, 'A', '16:00-17:00', '16:00:17:00', '16:00:17:00', '16:00:17:00', '16:00:17:00', 'F3', 'F3', 'F3', 'F3', 'F3');
INSERT INTO grupos VALUES (75, 53, 11, 'A', '15:00-16:00', '15:00:16:00', '15:00:16:00', '15:00:16:00', '15:00:16:00', 'F3', 'F3', 'F3', 'F3', 'F3');
INSERT INTO grupos VALUES (76, 54, 48, 'AD', '', '', '', '', '', '', '', '', '', '');
INSERT INTO grupos VALUES (77, 55, 38, 'B', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', '13:00-14:00', 'LC2', 'LC2', 'LC2', 'LC2', 'F1');
INSERT INTO grupos VALUES (78, 55, 27, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', 'LC2', 'LC2', 'LC2', 'LC2', 'F2');

-- 9no Semestre.
INSERT INTO grupos VALUES (38, 27, 47, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', 'LSI', 'LSI', 'LSI', 'LRD', 'LRD');
INSERT INTO grupos VALUES (39, 28, 38, 'B', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', '10:00-11:00', 'K2', 'LSI', 'LSI', 'LSI', 'LRD');
INSERT INTO grupos VALUES (40, 28, 45, 'A', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', '9:00-10:00', 'F2', 'F2', 'F2', 'F2', 'F2');
INSERT INTO grupos VALUES (41, 29, 6, 'A', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', '14:00-15:00', 'F1', 'F1', 'F1', 'F1', 'F1');
INSERT INTO grupos VALUES (42, 30, 48, 'AD', '', '', '', '', '', '', '', '', '', '');

-- Laboratorios.
INSERT INTO grupos VALUES (79, 16, 14, 'AB', '', '', '', '', '17:00-19:00', '', '', '', '', 'LF2');
