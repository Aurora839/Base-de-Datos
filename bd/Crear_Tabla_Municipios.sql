CREATE TABLE riac.Municipios
	(Id_Municipio INT AUTO_INCREMENT NOT NULL, 
	Nombre_Municipio VARCHAR(255) NOT NULL, 
	Id_Estado INT NOT NULL,
	FOREIGN KEY (Id_Estado) REFERENCES Estados (Id_Estado),
	PRIMARY KEY(Id_Municipio) ) ENGINE = InnoDB;