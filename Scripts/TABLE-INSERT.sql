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
		
INSERT INTO Medikament(Name, MedikamentGruppe_ID, Hersteller, Preis, Anzahl) Values
		('Morphin', 1, 'Roche', 41, 100),
		('Fentanyl', 1, 'Roche', 20, 15),
		('Methadon', 1, 'Roche', 35, 76),
		('Katzenschnupfen', 2, 15, 230),
		('Panleukopenie', 2, 22, 83),
		('FeLV', 2, 28, 14),
		('Glykopeptide', 3, 42, 14)
		
INSERT INTO Tier(Tier_ID, Name, Geschlecht, Rasse_ID, Alter, Besitzer_ID) Values 
		(1, 'Hassi', 'Weiblich', 8, 14, 3),
		(2, 'Bello', 'Männlich', 1, 3, 5),
		(3, 'Cheese', 'Männlich', 7, 5, 1),
		(4, 'Mopsine', 'Weiblich', 2, 10, 2),
		(5, 'Pussi', 'Weiblich', 3, 1, 4),
		(6, 'Garfield', 'Männlich', 4, 12, 3),
		(7, 'Tigerli', 'Weblich', 5, 8, 5),
		(8, 'Schnupfi', 'Weiblich', 9, 9, 1),
		(9, 'Mausi', 'Männlich', 6, 2, 2),
		(10, 'Ändu', 'Männlich', 5, 25, 3);

INSERT INTO Termin(Termin_ID, Tier_ID, Datum, Medikament_ID, Bemerkung) Values
		(1, 1, '2015-01-05', 
		
INSERT INTO Behandlung(Behandlung_ID, Personal_ID, 



SELECT * From Besitzer;
