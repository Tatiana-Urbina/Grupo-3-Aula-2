-- Valoración Final Módulo Programador TSDWAD
-- Bases de Datos
-- Alumno Mario Guerra

-- limpiamos todas las tablas
set FOREIGN_KEY_CHECKS = 0;
truncate table historial;
truncate table perro;
truncate table dueno;
set FOREIGN_KEY_CHECKS = 1;


-- tabla dueno (dni, nombre, apellido, telefono, direccion)
insert into dueno values ( 28957346, 'Juan', 'Perez', '478-9689', 'Belgrano 101');
insert into dueno values ( 23546987, 'Maria', 'Perez', '478-3371', 'Pueyrredon 811');
insert into dueno values ( 33641700, 'Alfonso', 'Rios', '477-2714', 'Brasil 983 P.B.');
insert into dueno values ( 19766531, 'Roxana', 'Alvarez', '475-8893', 'Tucuman 287');

-- tabla perro (id_perro, nombre, fecha_nac, sexo, dni_dueno)
insert into perro values ( 13, 'Puppy', '2012-12-12', 'M', 28957346);
insert into perro values ( 14, 'Fido', '2016-11-23', 'M', 23546987);
insert into perro values ( 15, 'Olivia', '2019-05-21', 'H', 33641700);
insert into perro values ( 16, 'Toto', '2020-07-02', 'M', 19766531);

-- tabla historial (id_historial, fecha, perro, descripcion, monto)
insert into historial values (  901, '2020-03-15', 13, 'Corte de pelo', 45.00);
insert into historial values ( 1001, '2021-03-15', 15, 'Corte de pelo', 75.10);
insert into historial values ( 1002, '2021-04-17', 15, 'Corte de uñas', 79.60);
insert into historial values ( 1003, '2021-06-02', 15, 'Baño y corte', 761.80);
insert into historial values ( 1004, '2021-07-22', 15, 'Retoques al corte', 8.00);
insert into historial values ( 1005, '2021-08-31', 15, 'Corte de pelo', 41.00);
insert into historial values ( 1051, '2021-05-15', 13, 'Corte de pelo', 45.00);
insert into historial values ( 1101, '2021-03-20', 16, 'Baño y corte', 85.20);
insert into historial values ( 1102, '2021-04-10', 16, 'Baño y corte', 95.10);
insert into historial values ( 1103, '2021-05-22', 16, 'Corte de pelo', 75.30);
insert into historial values ( 1104, '2021-06-03', 16, 'Corte de uñas', 35.70);
insert into historial values ( 1105, '2021-08-15', 16, 'Corte de pelo', 15.90);
insert into historial values ( 1201, '2022-03-07', 16, 'Corte de pelo', 22.90);
insert into historial values ( 1202, '2022-04-13', 13, 'Corte de uñas', 80.00);
