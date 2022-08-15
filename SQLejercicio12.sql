create database peluqueria_canina;
use peluqueria_canina;

create table Dueno(
DNI int not null primary key,
Nombre varchar (20) not null,
Apellido varchar (20) not null,
Telefono int not null,
Direccion varchar (50) not null);

create table Perro(
ID_Perro int not null primary key,
Nombre varchar (10),
Fecha_nac varchar (10) not null,
Sexo varchar (6) not null,
DNI_dueno int,
constraint fk_D foreign key (DNI_Dueno) references Dueno (DNI));

create table Historial(
ID_Historial int auto_increment not null primary key,
Fecha varchar (10) not null, 
Perro int not null, 
Descripcion varchar (60) not null,
Monto int not null,
constraint fk_P foreign key (Perro) references Perro (ID_Perro) on update cascade);

insert into Dueno values (61538496, "Alfonso", "Quiroga", 224356657, "Salta 125 B° Centro");
insert into Dueno values (15358497, "Jorge", "Mendoza", 564359675, "Pintos 456 B° Talleres");
insert into Dueno values (53849619, "Mirta", "Sosa", 674350654, "Jacinto Ríos 891 B° Patricios");
insert into Dueno values (77638496, "Teresa", "Pérez", 704354632, "Florencia 933 San Nicolás");

insert into Perro values (180, 'Rufo', '12-05-22', 'Macho', DNI_Dueno);
insert into Perro values (820, 'Kika', '21-10-20', 'Hembra', DNI_Dueno);
insert into Perro values (450, 'Pepa', '06-06-18', 'Hembra', DNI_Dueno);
insert into Perro values (171, 'Luna', '04-12-19', 'Macho', DNI_Dueno);

insert into Historial values (1010, '17-06-22', 1, 'Lavado', 1200);
insert into Historial values (2211, '01-04-22', 2, 'Corte y peinado', 1980);
insert into Historial values (4233, '12-08-22', 3, 'Lavado y corte', 2250);
insert into Historial values (8745, '23-02-22', 4, 'Lavado, corte y peinado', 2380);

select * from Perro 
where Sexo = 'Macho' and Fecha_nac between 2020 and 2022
