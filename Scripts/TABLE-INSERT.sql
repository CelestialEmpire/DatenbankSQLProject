---Verbinden von DB
Use TierartztPraxis;

---Einfügen von Berufen
INSERT INTO Beruf(Name) Values 
		('Artzt'), 
		('MPA');

---Personal wird eingefügt
INSERT INTO Personal(Beruf_ID, Name, Vorname, Geburtsdatum, Aktiv) Values 
		(2, 'Tanner', 'Sara', '1984-08-02', 1), 
		(2, 'Staehli', 'Manuela', '1992-09-14', 1), 
		(1, 'Luescher', 'Lukas', '1952-11-24', 1), 
		(1, 'Nydegger', 'Tobias', '1975-04-08', 1), 
		(2, 'Kueng', 'Michaela', '1994-02-04', 1);

---Tierarten werden eingefügt
INSERT INTO Tierart(Tierart) Values 
		('Hund'), 
		('Katze'), 
		('Maus'), 
		('Kaninchen');

---Rassen werden erstellt
INSERT INTO Rasse(Tierart_ID, Rasse) Values 
		(1, 'Goldenretriever'), 
		(1, 'Bulldoge'), 
		(2, 'Norwegische Waldkatze'), 
		(2, 'Perserkatze'), 
		(2, 'Bengal'), 
		(3, 'Rennmaus'), 
		(3, 'Spitzmaus'), 
		(4, 'Zwergwidder'), 
		(4, 'Riesenkaninchen');

---Besitzer werden eingetragen
INSERT INTO Besitzer(Name, Vorname, Telefon, Email, Strasse, PLZ, Ort) Values 
		('Streit', 'Michael', 0625338098, 'Michael.Streit@gmail.com', 'Bürgisserstrasse 2', 5000, 'Aarau'), 
		('Kurts', 'Hans', 0623457620, 'Hans.Kurt@gmail.com', 'Weltgangsweg 13', 3006, 'Bern'), 
		('Gnos', 'Mirjam', 0763219937, 'Mirjam.Gnos@yahoo.de', 'Schulweg 2', 9000, 'St. Gallen'), 
		('Stark', 'Flavio', 0782047712, 'Flavio.Stark@gmx.ch', 'Riedweg 32d', 1203, 'Genf'), 
		('Redig', 'Thomas', 0542351234, 'Thomas@Redig.ch', 'Bühlacherstrasse 23', 5001, 'Aarau');

---Medikamenten Gruppen werden eingefügt
INSERT INTO MedikamentGruppe(GruppeName) Values
		('Schmerzmittel'),
		('Impfstoff'),
		('Antibiotikum');

---Medikamente werden eingetragen
INSERT INTO Medikament(Name, MedikamentGruppe_ID, Hersteller, Preis, Anzahl) Values
		('Morphin', 1, 'Roche', 41, 100),
		('Fentanyl', 1, 'Roche', 20, 15),
		('Methadon', 1, 'Roche', 35, 76),
		('Katzenschnupfen', 2, 'Heisenberg', 15, 230),
		('Panleukopenie', 2, 'Heisenberg', 22, 83),
		('FeLV', 2, 'Heisenberg', 28, 14),
		('Glykopeptide', 3, 'Heisenberg', 42, 14),
		('Chinolone', 3, 'Heisenberg', 8, 123),
		('Sulfonamide', 3, 'Roche', 12, 432);

---Tiere weden eingetragen		
INSERT INTO Tier(Name, Geschlecht, Rasse_ID, Geburtsdatum, Besitzer_ID) Values 
		('Hassi', 'Weiblich', 8, 14, 3),
		('Bello', 'Männlich', 1, 3, 5),
		('Cheese', 'Männlich', 7, 5, 1),
		('Mopsine', 'Weiblich', 2, 10, 2),
		('Pussi', 'Weiblich', 3, 1, 4),
		('Garfield', 'Männlich', 4, 12, 3),
		('Tigerli', 'Weblich', 5, 8, 5),
		('Schnupfi', 'Weiblich', 9, 9, 1),
		('Mausi', 'Männlich', 6, 2, 2),
		('Ändu', 'Männlich', 5, 25, 3);

---Termine werden erstellt
INSERT INTO Termin(Tier_ID, Datum, Medikament_ID, Bemerkung) Values
		(3, '2015-01-05', 1, 'Kastration'),
		(1, '2015-01-06', 7, 'Hat Fieber'),
		(2, '2015-01-10', 2, 'Hat Bein gebrochen'),
		(4, '2015-01-08', 8, 'Wunde am Fuss'),
		(5, '2015-01-11', 6, 'FeLV'),
		(6, '2015-01-13', 3, 'Überfressung'),
		(7, '2015-01-13', 1, 'Bein amputieren'),
		(8, '2015-01-14', 5, 'Panleukpenie'),
		(9, '2015-01-15', 9, 'Stark Fieber'),
		(10, '2015-01-16', 1, 'Innere Blutung'),
		(3, '2015-01-06', 1, 'Stark Fieber'),
		(3, '2015-02-05', 1, 'Darmverstopfung');

---Behandlungen werden eingetragen		
INSERT INTO Behandlung(Personal_ID, Termin_ID, Medikament_ID, Dauer, AbschlussBemerkung, Gewicht) Values
		(3, 11, 7, '1:30', 'Antibiotikum wurde gegeben. Fieber sollte sinken', 0.250),
		(2, 12, 1, '1:30', 'Darm wurde geleert', 0.150),
		(4, 1, 1, '1:30', 'Operation war erfolgreich', 0.200),
		(1, 2, 7, '0:20', 'Antibiotikum wurde gegeben. Fieber sollte sinken', 1.2),
		(3, 3, 2, '1:20', 'Bein wurde geschient', 15.4),
		(2, 4, 8, '0:40', 'Wunde gesäubert und verbunden. Antibiotikum wurde vergeben.', 8.2),
		(5, 5, 6, '0:15', 'Impfung wurde gemacht', 3.8),
		(1, 6, 3, '0:35', 'Schmerzmittel gegen Bauchschmerzen wurde gegeben', 5.9),
		(4, 7, 1, '2:34', 'Operation verlief gut. Amputierung hat perfekt geklappt', 4.2),
		(2, 8, 5, '0:10', 'Impfung wurde getätigt', 6.2),
		(5, 9, 9, '0:20', 'Antibiotikum wurde gegeben. Fieber sollte sinken', 0.400),
		(3, 10, 1, '2:50', 'Blutung konnte verlöhtet und gestopt werden', 9.4);
