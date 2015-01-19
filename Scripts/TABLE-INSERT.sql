Use TierartztPraxis;

INSERT INTO Beruf(Beruf_ID, Name) Values 
		('1', 'Artzt'), 
		('2', 'MPA');

INSERT INTO Personal(Personal_ID,Beruf_ID, Name, Vorname, Geburtsdatum, Aktiv) Values 
		(1, 2, 'Tanner', 'Sara', '1984-08-02', 1), 
		(2, 2, 'Staehli', 'Manuela', '1992-09-14', 1), 
		(3, 1, 'Luescher', 'Lukas', '1952-11-24', 1), 
		(4, 1, 'Nydegger', 'Tobias', '1975-04-08', 1), 
		(5, 2, 'Kueng', 'Michaela', '1994-02-04', 1);

INSERT INTO Tierart(Tierart_ID, Tierart) Values 
		(1, 'Hund'), 
		(2, 'Katze'), 
		(3, 'Maus'), 
		(4, 'Kaninchen');

INSERT INTO Rasse(Rasse_ID,Tierart_ID, Rasse) Values 
		(1, 1, 'Goldenretriever'), 
		(2, 1, 'Bulldoge'), 
		(3, 2, 'Norwegische Waldkatze'), 
		(4, 2, 'Perserkatze'), 
		(5, 2, 'Bengal'), 
		(6, 3, 'Rennmaus'), 
		(7, 3, 'Spitzmaus'), 
		(8, 4, 'Zwergwidder'), 
		(9, 4, 'Riesenkaninchen');

INSERT INTO Besitzer(Besitzer_ID, Name, Vorname, Telefon, Email, Strasse, PLZ, Ort) Values 
		(1, 'Streit', 'Michael', 0625338098, 'Michael.Streit@gmail.com', 'Bürgisserstrasse 2', 5000, 'Aarau'), 
		(2, 'Kurts', 'Hans', 0623457620, 'Hans.Kurt@gmail.com', 'Weltgangsweg 13', 3006, 'Bern'), 
		(3, 'Gnos', 'Mirjam', 0763219937, 'Mirjam.Gnos@yahoo.de', 'Schulweg 2', 9000, 'St. Gallen'), 
		(4, 'Stark', 'Flavio', 0782047712, 'Flavio.Stark@gmx.ch', 'Riedweg 32d', 1203, 'Genf'), 
		(5, 'Redig', 'Thomas', 0542351234, 'Thomas@Redig.ch', 'Bühlacherstrasse 23', 5001, 'Aarau');

INSERT INTO MedikamentGruppe(MedikamentGruppe_ID, GruppeName) Values
		(1, 'Schmerzmittel'),
		(2, 'Impfstoff'),
		(3, 'Antibiotikum');
		
INSERT INTO Tier(



SELECT * From Besitzer;
