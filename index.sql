
-- Actividad N°3, PWIV UTN Bs.As --
create database Academia;
use Academia;

-- TABLAS --

create table sede(
idsede int unsigned not null auto_increment,
ciudad varchar(100),
partido varchar(100),
primary key(idsede)
);

create table curso(
idcurso int unsigned not null auto_increment,
nombre varchar(200),
lanzamiento date,
duracion tinyint unsigned,
sedeid int unsigned not null,
primary key(idcurso),
foreign key(sedeid) references sede(idsede)
);

create table profesor(
idprofesor int unsigned not null auto_increment,
nombre varchar(120) not null,
apellido varchar(120) not null,
primary key(idprofesor),
foreign key(cursoid) references curso(idcurso)
);

create table profesor_curso(
id int unsigned not null auto_increment,
profesorid int unsigned not null,
cursoid int unsigned not null,
primary key(id),
foreign key(profesorid) references profesor(idprofesor),
foreign key(cursoid) references curso(idcurso)
);

create table curso_sede(
id int unsigned not null auto_increment,
cursoid int unsigned not null,
sedeid int unsigned not null,
primary key(id),
foreign key(cursoid) references curso(idcurso),
foreign key(sedeid) references sede(idsede)
);

-- DATOS --

insert into sede values (null, "pacheco", "tigre");
insert into sede values (null, "campana", "campana");
insert into sede values (null, "becar", "san isidro");
insert into sede values (null, "avellaneda", "avellaneda");
insert into sede values (null, "fatima", "pilar");
insert into sede values (null, "loma verde", "escobar");

insert into curso values (null, "frontend", "2022-02-03", 4, 2);
insert into curso values (null, "backend", "2022-06-02", 4, 6);
insert into curso values (null, "base de datos", "2022-10-05", 2, 4);
insert into curso values (null, "diseño centrado en el usuario", "2023-02-05", 2, 1);
insert into curso values (null, "ciberseguridad", "2023-04-07", 4, 3);
insert into curso values (null, "mobile", "2023-08-06", 4, 5);

insert into profesor values (null, "nicolas", "pichetto");
insert into profesor values (null, "oscar", "gomez");
insert into profesor values (null, "marcelo", "fascon");
insert into profesor values (null, "victoria", "debler");
insert into profesor values (null, "damian", "luna");
insert into profesor values (null, "carolina", "almiron");

insert into profesor_curso values (null, 1, 2);
insert into profesor_curso values (null, 2, 6);
insert into profesor_curso values (null, 3, 4);
insert into profesor_curso values (null, 4, 3);
insert into profesor_curso values (null, 5, 1);
insert into profesor_curso values (null, 6, 5);

insert into curso_sede values (null, 1, 2);
insert into curso_sede values (null, 2, 6);
insert into curso_sede values (null, 3, 3);
insert into curso_sede values (null, 4, 1);
insert into curso_sede values (null, 5, 5);
insert into curso_sede values (null, 6, 4);
