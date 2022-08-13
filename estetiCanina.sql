create database estetiCanina;
use estetiCanina;

#Tabla 'Dueno'--
CREATE TABLE Dueno(
	DNI INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL, 
    Apellido VARCHAR(30) NOT NULL,
    Telefono BIGINT UNSIGNED,
    Direccion VARCHAR(40),
    CONSTRAINT pk_cD PRIMARY KEY(DNI)
    );
  
		INSERT INTO Dueno VALUES(27054698, 'Tomas', 'Guizard', 152645879, 'Av. Santa Ana 126');
		INSERT INTO Dueno VALUES(26852461, 'Mariel', 'Funes', 152000879, 'Av. Colón 306');
		INSERT INTO Dueno VALUES(17054018, 'Juan', 'Goytisolo', 156345879, 'Aymaras 200');
		INSERT INTO Dueno VALUES(20546872, 'Julián', 'Fante', 152645000, 'Ranqueles 500');
		INSERT INTO Dueno VALUES(16854967, 'Victoria', 'Leguimzamón', 152645888, 'Querandíes 16');   
		INSERT INTO Dueno VALUES(36452698, 'Luciana', 'Borges', 152777879, 'Calchaquíes 700');		   
		INSERT INTO Dueno VALUES(41036584, 'Josefa', 'Pizzarnik', 15253269, 'Pampas 8512');
		INSERT INTO Dueno VALUES(20000698, 'José', 'Girondo', 136645879, 'Tobas 1200');   
		INSERT INTO Dueno VALUES(24326586, 'Alicia', 'Wolf', 152645111, 'Tehuelches 1266');
		INSERT INTO Dueno VALUES(33524698, 'Conrado', 'Roxlo', 152645217, 'Diaguitas 1648');

SELECT * FROM Dueno;

#Tabla 'Perro'--
CREATE TABLE Perro(
	 ID_Perro INT NOT NULL AUTO_INCREMENT,
     Nombre VARCHAR(30) NOT NULL,
     Fecha_nac datetime NOT NULL,
     Sexo CHAR(5),
     DNI_PROPIETARIO INT NOT NULL,
     CONSTRAINT pk_cP PRIMARY KEY(ID_Perro),
     CONSTRAINT fk_dniP FOREIGN KEY(DNI_PROPIETARIO) REFERENCES Dueno (DNI)
     );

		INSERT INTO Perro VALUES(1, 'Silver', '2016-04-12 10:00:00', 'M', 27054698);  
		INSERT INTO Perro VALUES(2, 'Pinki', '2014-03-02 10:00:00', 'H', 26852461);  
		INSERT INTO Perro VALUES(3, 'Cachi', '2020-02-03 10:00:00', 'H', 17054018);  
		INSERT INTO Perro VALUES(4, 'Tini', '2013-04-12 10:00:00', 'H', 20546872);  
		INSERT INTO Perro VALUES(5, 'Samu', '2012-04-12 10:00:00', 'M', 16854967);  
		INSERT INTO Perro VALUES(6, 'Wendy', '2015-07-12 10:00:00', 'H', 36452698);  
		INSERT INTO Perro VALUES(7, 'Merlin', '2016-12-12 10:00:00', 'M', 41036584);  
		INSERT INTO Perro VALUES(8, 'Tamara', '2014-04-12 10:00:00', 'H', 20000698); 
		INSERT INTO Perro VALUES(9, 'Tom', '2021-08-12 10:00:00', 'M', 24326586);  
		INSERT INTO Perro VALUES(10, 'Eumi', '2012-04-12 10:00:00', 'H', 33524698);  
        
        SELECT * FROM Perro;
        
        
#Consigna 8: Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
#Tabla 'Historial'--

CREATE TABLE Historial(
	ID_Historial INT AUTO_INCREMENT NOT NULL,
    Descripcion VARCHAR(75) NOT NULL,
    Fecha DATETIME NOT NULL,
    Monto INT NOT NULL,
    Perros INT NOT NULL,
    CONSTRAINT pk_h PRIMARY KEY(ID_Historial),
    CONSTRAINT fk_h FOREIGN KEY(Perros) REFERENCES Perro(ID_Perro)
    );

INSERT INTO Historial VALUES(1,'Mascota: Silver-Servicio completo', '2022-08-11 15:00:00', 2600, 1);
INSERT INTO Historial VALUES(2,'Mascota: Eumi-Servicio completo', '2022-08-11 17:00:00', 2000, 10);





