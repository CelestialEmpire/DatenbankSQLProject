Use TierartztPraxis;

INSERT INTO Beruf(Beruf_ID, Name) Values ('1', 'Artzt'), ('2', 'MPA');

INSERT INTO Personal(Personal_ID, Beruf_ID, Name, Vorname, Geburtsdatum) Values (2, 'Tanner', 'Sara', 1984-08-02), (2, 'Staehli', 'Manuela', 1992-09-14), (1, 'Luescher', 'Lukas', 1952-11-24), (1, 'Nydegger', 'Tobias', 1975-04-08), (2, 'Kueng', 'Michaela', 1994-02-04)

INSERT INTO Tierart(Tierart) Values ('Hund'), ('Katze'), ('Maus'), ('Kaninchen')

INSERT INTO Rasse(Tierart_ID, Rasse) Values (1, 'Goldenretriever'), (1, 'Bulldoge'), (2, 'Norwegische Waldkatze'), (2, 'Perserkatze'), (2, 'Bengal'), (3, 'Rennmaus'), (3, 'Spitzmaus'), (4, 'Zwergwidder'), (4, 'Riesenkaninchen')

INSERT INTO Besitzer(Name, Vorname, Telefon, Email, Strasse, PLZ, Ort) Values

SELECT * FROM Beruf