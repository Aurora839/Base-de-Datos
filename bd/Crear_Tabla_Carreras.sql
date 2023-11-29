CREATE TABLE riac.Carreras
	(Id_Carrera INT AUTO_INCREMENT NOT NULL, 
	Nombre_Carrera VARCHAR(255) NOT NULL,
	Id_Grupo INT NOT NULL,
	Id_Semestre INT NULL, 
	FOREIGN KEY (Id_Grupo) REFERENCES Grupos (Id_Grupo),
	FOREIGN KEY (Id_Semestre) REFERENCES Semestres (Id_Semestre),
	PRIMARY KEY(Id_Carrera) ) ENGINE = InnoDB;