create database PeluqueriaCanina;
--------------------------------------------------------------------------
use PeluqueriaCanina;
--------------------------------------------------------------------------
CREATE TABLE Dueño(
  DNI int (10) not null PRIMARY KEY,
  Nombre varchar (20) not null,
  Apellido varchar (20) not null,
  Telefono int (20) not null,
  Direccion varchar (20) not null);
  -------------------------------------------------------------------------
  create table Perro(
  ID_Perro int (20)  AUTO_INCREMENT not null PRIMARY KEY,
  Nombre varchar (40) not null,
  Fecha_nac datetime not null,
  Sexo char(10) not null,
  DNI_Dueño int (10) not null,
  CONSTRAINT FK_Dueño FOREIGN KEY (DNI_Dueño) REFERENCES Dueño (DNI));
  -------------------------------------------------------------------------
  create table Historial(
  ID_historial int (20) auto_increment not null PRIMARY KEY,
  Fecha datetime not null,
  Perro int (20) not null,
  Descripcion varchar (30) not null,
  Monto int (10) not null,
  CONSTRAINT FK_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro));
  --------------------------------------------------------------------------
insert into Dueño(DNI,Nombre,Apellido,Telefono,Direccion)Values
('16485125','Marcelo', 'Gutierrez', '351745963', 'Av. colon 1117');
----------------------------------------------------------------------------
insert into Perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueño) Values
('1','Tomy','08-03-19 12:20:01','M','16485125');
----------------------------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;
----------------------------------------------------------------------------
 Update Perro set Fecha_nac='20-05-17' where ID_Perro='1';