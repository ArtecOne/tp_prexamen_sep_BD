drop SCHEMA if exists biblioteca;
create schema biblioteca;
use biblioteca;

create table empleado (
id int(10) AUTO_INCREMENT not null,
nombre CHAR(12) not null,
apellido CHAR(15) not null,
primary key (id)
);

create table usuario (
id int(10) auto_increment not null,
nombre char(12) not null,
apellido char(10) not null,
dni int(8) not null,
id_emp int(10) not null,
primary key (id),
foreign key (id_emp) references empleado(id)
);

create table autor (
id int(10) AUTO_INCREMENT not null,
nombre CHAR(12) not null,
apellido char(15) not null,
libros_pub CHAR(20) not null,
PRIMARY KEY (id)
);

create table editorial (
id int(10) auto_increment not null,
nombre char(20) not null,
direccion VARCHAR(30) not null,
contacto int(12) not null,
mail VARCHAR(50) not null,
descripcion VARCHAR(50) not null,
id_au int(10) not null,
primary key (id),
foreign key (id_au) references autor(id)
);

create TABLE sala (
id int(10) AUTO_INCREMENT not null,
numero_sala int(10) not null,
piso INT(10) not null,
seccion VARCHAR(50) not null,
PRIMARY KEY (id)
);

CREATE TABLE librofis (
id int(10) AUTO_INCREMENT not null,
titulo varchar(50) not null,
genero char(15) not null,
rating char(10),
veces_tomado int(10) not null,
id_sala int(10) not null,
id_usuario int(10) not null,
PRIMARY KEY (id),
foreign key (id_sala) references sala(id),
foreign key (id_usuario) references usuario(id)
);

CREATE TABLE librodig (
id int(10) AUTO_INCREMENT not null,
titulo varchar(50) not null,
genero char(15) not null,
rating char(10),
veces_tomado int(10) not null,
id_sala int(10) not null,
id_usuario int(10) not null,
PRIMARY KEY (id),
foreign key (id_sala) references sala(id),
foreign key (id_usuario) references usuario(id)
);

create table au_fis (
id_au_fis int(10) not null AUTO_INCREMENT,
id_fis int(10) not null,
id_au int(10) not null,
primary key (id_au_fis),
foreign key (id_fis) references librofis(id),
foreign key (id_au) references autor(id)
);

create table ed_fis (
id_ed_fis int(10) not null AUTO_INCREMENT,
id_fis int(10) not null,
id_ed int(10) not null,
primary key (id_ed_fis),
foreign key (id_fis) references librofis(id),
foreign key (id_ed) references editorial(id)
);

create table au_dig (
id_au_dig int(10) not null AUTO_INCREMENT,
id_dig int(10) not null,
id_au int(10) not null,
primary key (id_au_dig),
foreign key (id_dig) references librodig(id),
foreign key (id_au) references autor(id)
);

create table ed_dig (
id_ed_dig int(10) not null AUTO_INCREMENT,
id_dig int(10) not null,
id_ed int(10) not null,
primary key (id_ed_dig),
foreign key (id_dig) references librofis(id),
foreign key (id_ed) references editorial(id)
);