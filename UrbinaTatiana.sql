CREATE DATABASE VET; 
USE VET;

CREATE TABLE Dueno(
DNI int(10) unsigned not null auto_increment,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Teléfono int(10) not null,
Dirección varchar(25) not null,
primary key (DNI)
);

CREATE TABLE Perro(
ID_Perro INT UNSIGNED NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(15), 
Fecha_nac DATE NOT NULL,
Sexo CHAR(10) NOT NULL,
DNI_Dueno int(10) unsigned,
constraint FK_Dueno foreign key(DNI_Dueno)
references Dueno(DNI),
primary key(ID_Perro));

CREATE TABLE Historial(
ID_Historial int unsigned  not null auto_increment,
Fecha date not null,
Perro int unsigned,
Descripción varchar(20) not null,
Monto int(10) not null,
primary key (ID_Historial),
constraint FK_Perro foreign key (Perro) references Perro (ID_Perro)
);

select * from Historial;


select * from Perro;

select * from Dueno;

insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (22480365, "José", "Santana",37552, "San Martin Nº2");
insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (12456987, "Luján", "Carrizo",365992, "San Clemente S/N");
insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (36251156, "Rubén", "Calvo",3712482, "El Jilguero Nº1262");
insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (23456258, "María", "Jungengel",101252, "Los Helechos NS/N");
insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (21456758, "Jazmin", "Urtubei",109547, "Guaraní S/N");
insert Dueno (DNI, Nombre, Apellido, Teléfono, Dirección ) value (22376258, "Celina", "Del Carmen",123658, "San Carlos S/N");

insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Tor", '2022-03-12', "Macho", 22480365);
insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Tor", '2022-03-12', "Macho", 22480365);
insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Tara", '2020-03-12', "Hembra", 12456987);
insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Roco", '2015-03-12', "Macho", 23456258);
insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Rufina", '2010-03-22', "Hembra", 21456758);
insert Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) value ("Gretta", '2019-09-31', "Hembra", 22376258);

insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-02-9', 1, "Baño", 2500);
insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-03-8', 2, "Baño", 3500);
insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-03-15', 3, "Consulta", 3000);
insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-04-30', 4, "Bano y peluqueria", 6800);
insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-07-01', 5, "peluqueria", 6800);
insert Historial (Fecha, Perro, Descripción, Monto) value ('2022-07-29', 6, "Bano y peluqueria", 9800);

select Monto from Historial Where Month(Fecha)= 07
