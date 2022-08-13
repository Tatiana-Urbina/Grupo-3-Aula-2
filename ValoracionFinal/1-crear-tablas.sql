-- Valoración Final Módulo Programador TSDWAD
-- Bases de Datos
-- Alumno Mario Guerra

drop database if exists peluq;
create database peluq;
use peluq;

create table perro (
    id_perro integer not null primary key,
    nombre varchar(30) not null,
    fecha_nac date,
    sexo char(1) not null check (sexo in ('M','H')), -- Macho, Hembra
    dni_dueno integer not null
);

create table dueno (
    dni integer not null primary key,
    nombre varchar(30) not null, 
    apellido varchar(30) not null,
    telefono varchar(20),
    direccion varchar(50)
);

create table historial (
    id_historial integer not null primary key,
    fecha date not null,
    perro integer not null,
    descripcion text,
    monto decimal(10,2)
);

alter table perro add constraint perro_fk1 foreign key (dni_dueno) references dueno(dni);
alter table historial add constraint historial_fk1 foreign key (perro) references perro(id_perro);
