use biblioteca;
set global FOREIGN_KEY_CHECKS = 0;

insert into empleado (nombre, apellido)
values
      ('franco' , 'valussi'),
      ('tomas' , 'dolar'),
      ('Xavier' , 'Ximenez'),
      ('Alverso' , 'Virgandez'),
      ('Roberto' ,  'The Niro'),
      ('Pedro' , 'Alcachofa');
      
insert into usuario (id_emp , nombre , apellido , dni)
values
      (1 , 'Armando' , 'Armani' , 91231232),
      (2 , 'Aguero' , 'Aguado' , 91283912),
      (3 , 'Andres' , 'Paez' , 91218902),
      (4 , 'Juan' , 'Hurtado' , 89173292),
      (5 , 'Francisca' , 'Avellaneda' , 09187239);
      
insert into autor (nombre , apellido , libros_pub)
values
      ('Edgar' , 'Pou' , 3),
      ('Farrel' , 'Wllow' , 4),
      ('Pablo' , 'Nesta' , 2),
      ('jose' , 'Paredes' , 2),
      ('Roman' ,  'Rico' , 3),
      ('Amanda' , 'Becker' , 4),
      ('Hector' , 'Truman' , 2),
      ('pacifica' , 'Ocean' , 7),
      ('Lisa' , 'Linson' , 3),
      ('Homero' , 'Luigui' , 1);
      
insert into editorial (id_au, nombre , direccion , contacto , mail , descripcion)
VALUES
      ( 1 , 'La Mona' , 'Santa Fe 1231' , 1153433234 , '...@gmail.com' , '...'),
      ( 2 , 'Pacific Books' , 'Andres Correo 1245' , 1154753244 , '...@gmail.com' , '...'),
      ( 3 , 'Relic Read' , 'av agosto 3030' , 1165436454 , '...@outlook.com' , '...'),
      ( 4 , 'La Mona' , 'Santa Fe 1231' , 1153433234 , '...@gmail.com' , '...'),
      ( 5 , 'Pacific Books' , 'Andres Correo 1245' , 1154753244 , '...@gmail.com' , '...'),
      ( 6 , 'Relic Read' , 'av agosto 3030' , 1165436454 , '...@outlook.com' , '...'),
      ( 7 , 'La Mona' , 'Santa Fe 1231' , 1153433234 , '...@gmail.com' , '...'),
      ( 8 , 'Pacific Books' , 'Andres Correo 1245' , 1154753244 , '...@gmail.com' , '...'),
      ( 9 , 'Relic Read' , 'av agosto 3030' , 1165436454 , '...@outlook.com' , '...');
      
insert into sala (numero_sala , piso , seccion)
values
      (1 , 1 , 'Fantasia'),
      (2 , 1 , 'Terror'),
      (3 , 1 , 'Ciencia Ficcion'),
      (4 , 1 , 'Bibliografias'),
      (5 , 1 , 'Auto-ayuda'),
      (1 , 2 , 'Historia'),
      (2 , 2 , 'Realismo'),
      (3 , 2 , 'Manuales'),
      (4 , 2 , 'Ciencia' ),
      (5 , 2 , 'Para niños'),
      (1 , 3 , 'Politica'),
      (2 , 3 , 'Academico'),
      (3 , 3 , 'En Ingles'),
      (4 , 3 , 'Romance'),
      (5 , 3 , 'Musica');
      
insert into librofis (id_sala , id_usuario , titulo , genero , rating , veces_tomado)
values
      (2 , 1 , 'La Luna Baja' , 'Terror' , '+13' , 3),
      (1 , 1 , 'Una perla, Dos perlas' , 'Fantastico' , 'ATP' , 2),
      (7 , 1 , 'Rennato y su viaje' , 'Realista' , 'ATP' , 4),
      (11 , 2 , 'Peron' , 'Politica' , 'ATP' , 5),
      (6 , 2 , 'El Siglo X' , 'Historia' , 'ATP' , 9),
      (2 , 3 , 'El Rio negro' , 'Terror' ,  '+18' , 1),
      (3 , 1 , 'Retarium' , 'Ciencia Ficcion' , '+13' , 7),
      (5 , 3 , 'Como estar en buena forma' ,  'Auto-Ayuda' , 'ATP' , 10);
      
insert into librodig (id_sala , id_usuario , titulo , genero , rating, veces_tomado)
values
      (1 , 3 , 'La carcasa' , 'Fantastico' ,  NULL , 3),
      (14 , 4 , 'Amando a Armando' ,  'Romance' , '+18' , 2),
      (7 , 5 ,'Resaliendo' , 'Realista' , NULL ,  5),
      (7 , 5 , 'El Tunel' , 'Realista' , 'ATP' ,  10),
      (13 , 4 , 'THE KEY' ,  'Ingles' ,  '+13',  7),
      (2 , 1 , 'El Ultimo Tren' , 'Terror' , 'ATP', 1),
      (7 , 5 ,'El Relato' , 'Realista' , 'ATP', 5);
      
insert into au_fis (id_fis , id_au)
values
      (1 , 1),
      (2 , 2),
      (3 , 3),
      (4 , 4),
      (5 , 5),
      (6 , 1),
      (7 , 1),
      (8 , 6);
      
insert into au_dig (id_dig , id_au)
values
      (1 , 7),
      (2 , 8),
      (3 , 9),
      (4 , 10),
      (5 , 2),
      (6 , 2),
      (7 , 2);
      
insert into ed_fis (id_fis , id_ed)
values
      (1 , 1),
      (2 , 2),
      (3 , 3),
      (4 , 1),
      (5 , 2),
      (6 , 3),
      (7 , 1),
      (8 , 2);
      
INSERT into ed_dig (id_dig , id_ed)
values
      (1 , 1),
      (2 , 2),
      (3 , 3),
      (4 , 1),
      (5 , 2),
      (6 , 3),
      (7 , 1);