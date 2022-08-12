CREATE database IF NOT EXISTS `PELUQUERIA_CANINA`; 
USE `PELUQUERIA_CANINA` ;

CREATE TABLE IF NOT EXISTS `PELUQUERIA_CANINA`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(30) NULL,
  `Apellido` VARCHAR(35) NULL,
  `Telefono` INT NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`));

CREATE TABLE IF NOT EXISTS `PELUQUERIA_CANINA`.`Perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(20) NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(15) NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `fk_Perro_Dueno_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `fk_Perro_Dueno`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `mydb`.`Dueno` (`DNI`));

CREATE TABLE IF NOT EXISTS `PELUQUERIA_CANINA`.`Historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` DATE NULL,
  `Perro_ID` INT NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Monto` FLOAT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `fk_Historial_Perro1_idx` (`Perro_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Perro1`
    FOREIGN KEY (`Perro_ID`)
    REFERENCES `mydb`.`Perro` (`ID_Perro`));
 
 INSERT INTO dueno(DNI,Nombre,Apellido,Telefono,Direccion)VALUES
 (30500700, 'Alejandro', 'Gonzalez', 358444555, 'Chile 448'),
 (28779501, 'Pedro', 'Gomez', 358445715, 'Fragueiro 154'), 
 (24121154, 'Omar', 'Castro', 351789456, 'EEUU 1547'),
 (25555846, 'Pedro', 'Estevez', 351986312, 'Parana 147');
 
  
 INSERT INTO perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno)VALUES
 (1, 'Bety', '2015-03-15','Femenino', 30500700),
 (2, 'Pupy', '2019-12-25','Femenino', 28779501),
 (3, 'Blanca', '2017-04-23','Femenino', 24121154),
 (4, 'Nieves', '2012-08-08','Femenino', 25555846);
 
SELECT Id_Perro, perro.Nombre, Fecha_nac, Sexo, DNI_dueno, dueno.Apellido, dueno.Nombre
FROM perro JOIN dueno
ON dueno.DNI = perro.DNI_Dueno
WHERE dueno.Nombre = 'Pedro'
