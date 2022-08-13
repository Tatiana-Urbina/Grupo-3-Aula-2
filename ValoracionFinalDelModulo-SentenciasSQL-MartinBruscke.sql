#Bruscke Martin
CREATE DATABASE Veterinaria;

use Veterinaria;

CREATE TABLE Dueño(
	DNI int,
    Nombre varchar(50),
    Apellido varchar(50),
    Telefono varchar(10),
    Direccion varchar(25),
    CONSTRAINT Pk_DNI PRIMARY KEY(DNI)
);



CREATE TABLE Perro(
	ID_Perro int,
    Nombre varchar(50),
    Fecha_nac varchar(50),
    Sexo varchar(25),
    DNI_dueño int,
    CHECK (Fecha_nac like '[0-31]/[0-12]/[1950-9999]'),
    CONSTRAINT Pk_ID_P PRIMARY KEY (ID_Perro),
    CONSTRAINT Fk_DNI_d FOREIGN KEY(DNI_dueño) REFERENCES Dueño(DNI)
);

CREATE TABLE Historia(
	ID_Historial int,
    Fecha varchar(50),
    Perro int,
    Descripcion varchar(100),
    Monto int,
    CONSTRAINT Pk_ID_H PRIMARY KEY(ID_Historial),
    CONSTRAINT Fk_Perro FOREIGN KEY(Perro) REFERENCES Perro(ID_Perro)
);

ALTER TABLE Perro
DROP CONSTRAINT perro_chk_1;	#Borro la CONSTRAINT CHECK de perro

#Agrego datos del Dueño
INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(36189879, "Martin", "Bruscke", "3518153446", "27 de abril 536, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(38879453, "Matias", "Rodriguez", "351368920", "Obispo Trejo 351, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(23500100, "Emilio", "Pautasso", "341862131", "Parana 110, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(15739420, "Delfina", "Milanesio", "3465812642", "Parana 789, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(21697537, "Maria", "Presto", "341678524", "Av Colon 778, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(17891163, "Florencia", "Uriarte", "341862433", "Duarte Quiros 12, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(17934152, "Vanesa", "Lopez", "351866622", "Bolivia 314, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(33148952, "Anastasia", "Proski", "3518366458", "Bv San Juan 1002, Cordoba");

INSERT INTO Dueño(DNI, Nombre, Apellido, Telefono, Direccion)
VALUES(30987123, "Ruperta", "Puerta", "3518111458", "Bv Illia 232, Cordoba");



#Agrego datos del Perro
INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(1, "Firulais", "12/06/2020", "Masculino", 36189879);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(2, "Lazi", "27/07/2020", "Femenino", 38879453);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(3, "Bethoven", "11/09/2017", "Masculino", 23500100);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(4, "Mochuelo", "03/03/2021", "Masculino", 15739420);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(5, "Chispita", "13/5/2020", "Femenino", 21697537);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(6, "Rocky", "01/06/2019", "Masculino", 17891163);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(7, "Balto", "14/12/2021", "Masculino", 17934152);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(8, "Laika", "02/12/2015", "Femenino", 33148952);

INSERT INTO Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueño)
VALUES(9, "Rin Tin Tin", "15/09/2019", "Masculino", 30987123);


#Agrego Historial perruno
INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(1, "09/08/2020", 9, "Peluqueria", 1000);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(2, "12/08/2020", 8, "Desparacitacion", 3500);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(3, "15/08/2020", 7, "Cirugia", 10000);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(4, "17/08/2020", 6, "Revision Anual", 5000);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(5, "19/08/2020", 5, "Moquillo, antidoto", 4530);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(6, "19/08/2020", 4, "Yeso, quebraduda pata trasera", 7000);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(7, "23/08/2020", 3, "Revision Medica", 2500);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(8, "24/08/2020", 2, "Vacunacion anti-rabica", 5000);

INSERT INTO Historia(ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES(9, "26/08/2020", 1, "Dieta especial", 3500);


# 10) Vaciar la tabla historial y resetear el contador del campo ID.
TRUNCATE Historia;















