create database PeluqueriaCanina;
--------------------------------------------------------------------------
use PeluqueriaCanina;
--------------------------------------------------------------------------
-- Dueño
CREATE TABLE Dueno(
  DNI int (10) not null PRIMARY KEY,
  Nombre varchar (20) not null,
  Apellido varchar (20) not null,
  Telefono bigint (30) not null,
  Direccion varchar (20) not null);
   -------------------------------------------------------------------------   
  -- Perro
  create table Perro(
  ID_Perro int (20)  AUTO_INCREMENT not null PRIMARY KEY,
  Nombre varchar (40) not null,
  Fecha_nac date not null,
  Sexo char(10) not null,
  DNI_Dueno int (10) not null,
  CONSTRAINT FK_Dueno FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI));
  -------------------------------------------------------------------------
  -- Historial
  create table Historial(
  ID_historial int (20) auto_increment not null PRIMARY KEY,
  Fecha date not null,
  Perro int (20) not null,
  Descripcion varchar (30) not null,
  Monto int (10) not null,
  CONSTRAINT FK_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro));
  -------------------------------------------------------------------------
  -- Obtener todos los perros que asistieron a la peluquería en 2022
  
  insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) VALUES 
  (35732634,"Alejandro","Suarez",238481238,"Independencia 342"),
  (47632183,"Juan","Aguirres",384746289,"San Juan 4532"),
  (32145645,"Agustina","Fernandez",3234454644,"San Lorenzo 234");
  
  insert into perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno) VALUES
  ("1","Pepa","2010-05-23","Femenino",47632183),
  ("2","Luter","2015-09-21","Masculino",35732634),
  ("3","Teodoro","2019-02-14","Masculino",32145645);
  
  insert into historial(ID_Historial,Fecha,Perro,Descripcion,Monto)values
  ("1","2022-04-23",1,"Cataratas",1234),
  ("2","2021-05-01",3,"Ampolla",3245),
  ("3","2018-12-30",2,"Fractura",6343);
  
  select Fecha, Nombre
  from historial inner join perro on historial.ID_historial=perro.ID_perro
  where Fecha >= "2022-01-01"