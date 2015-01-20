---Verbinden von DB
Use TierartztPraxis;

---Einfügen von Berufen
INSERT INTO Beruf(Beruf_ID, Name) Values 
		('1', 'Artzt'), 
		('2', 'MPA');

---Personal wird eingefügt
INSERT INTO Personal(Personal_ID,Beruf_ID, Name, Vorname, Geburtsdatum, Aktiv) Values 
		(1, 2, 'Tanner', 'Sara', '1984-08-02', 1), 
		(2, 2, 'Staehli', 'Manuela', '1992-09-14', 1), 
		(3, 1, 'Luescher', 'Lukas', '1952-11-24', 1), 
		(4, 1, 'Nydegger', 'Tobias', '1975-04-08', 1), 
		(5, 2, 'Kueng', 'Michaela', '1994-02-04', 1);

---Tierarten werden eingefügt
INSERT INTO Tierart(Tierart_ID, Tierart) Values 
		(1, 'Hund'), 
		(2, 'Katze'), 
		(3, 'Maus'), 
		(4, 'Kaninchen');

---Rassen werden erstellt
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

---Besitzer werden eingetragen
INSERT INTO Besitzer(Besitzer_ID, Name, Vorname, Telefon, Email, Strasse, PLZ, Ort) Values 
		(1, 'Streit', 'Michael', 0625338098, 'Michael.Streit@gmail.com', 'Bürgisserstrasse 2', 5000, 'Aarau'), 
		(2, 'Kurts', 'Hans', 0623457620, 'Hans.Kurt@gmail.com', 'Weltgangsweg 13', 3006, 'Bern'), 
		(3, 'Gnos', 'Mirjam', 0763219937, 'Mirjam.Gnos@yahoo.de', 'Schulweg 2', 9000, 'St. Gallen'), 
		(4, 'Stark', 'Flavio', 0782047712, 'Flavio.Stark@gmx.ch', 'Riedweg 32d', 1203, 'Genf'), 
		(5, 'Redig', 'Thomas', 0542351234, 'Thomas@Redig.ch', 'Bühlacherstrasse 23', 5001, 'Aarau');

---Medikamenten Gruppen werden eingefügt
INSERT INTO MedikamentGruppe(MedikamentGruppe_ID, GruppeName) Values
		(1, 'Schmerzmittel'),
		(2, 'Impfstoff'),
		(3, 'Antibiotikum');

---Medikamente werden eingetragen
INSERT INTO Medikament(Medikament_ID, Name, MedikamentGruppe_ID, Hersteller, Preis, Anzahl) Values
		(1, 'Morphin', 1, 'Roche', 41, 100),
		(2, 'Fentanyl', 1, 'Roche', 20, 15),
		(3, 'Methadon', 1, 'Roche', 35, 76),
		(4, 'Katzenschnupfen', 2, 'Heisenberg', 15, 230),
		(5, 'Panleukopenie', 2, 'Heisenberg', 22, 83),
		(6, 'FeLV', 2, 'Heisenberg', 28, 14),
		(7, 'Glykopeptide', 3, 'Heisenberg', 42, 14),
		(8, 'Chinolone', 3, 'Heisenberg', 8, 123),
		(9, 'Sulfonamide', 3, 'Roche', 12, 432);

---Tiere weden eingetragen		
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

---Termine werden erstellt
INSERT INTO Termin(Termin_ID, Tier_ID, Datum, Medikament_ID, Bemerkung) Values
		(1, 3, '2015-01-05', 1, 'Kastration'),
		(2, 1, '2015-01-06', 7, 'Hat Fieber'),
		(3, 2, '2015-01-10', 2, 'Hat Bein gebrochen'),
		(4, 4, '2015-01-08', 8, 'Wunde am Fuss'),
		(5, 5, '2015-01-11', 6, 'FeLV'),
		(6, 6, '2015-01-13', 3, 'Überfressung'),
		(7, 7, '2015-01-13', 1, 'Bein amputieren'),
		(8, 8, '2015-01-14', 5, 'Panleukpenie'),
		(9, 9, '2015-01-15', 9, 'Stark Fieber'),
		(10, 10, '2015-01-16', 1, 'Innere Blutung');

---Behandlungen werden eingetragen		
INSERT INTO Behandlung(Behandlung_ID, Personal_ID, Termin_ID, Medikament_ID, Dauer, AbschlussBemerkung, Gewicht) Values
		(1, 4, 1, 1, '1:30', 'Operation war erfolgreich', 0.200),
		(2, 1, 2, 7, '0:20', '
		


SELECT * From Besitzer;
hahaa	       0
lukas ---------
               0
