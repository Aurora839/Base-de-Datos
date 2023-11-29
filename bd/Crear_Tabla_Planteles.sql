CREATE TABLE riac.Planteles
	(Id_Plantel INT AUTO_INCREMENT NOT NULL, 
	Nombre_Plantel VARCHAR(255) NOT NULL,  
	Email_Plantel VARCHAR (255) NOT NULL, 
	Telefono_Plantel VARCHAR(255) NOT NULL,
	Id_Estado INT NOT NULL,
	Id_Municipio INT NOT NULL,
 	FOREIGN KEY (Id_Estado) REFERENCES Estados (Id_Estado),
	FOREIGN KEY (Id_Municipio) REFERENCES Municipios (Id_Municipio),
	PRIMARY KEY(Id_Plantel) ) ENGINE = InnoDB;