USE TierartztPraxis;

CREATE TABLE Personal
	(Personal_ID INTEGER identity(1,1) NOT NULL,
	Name nvarchar(50),
	Vorname nvarchar(50),
	Beruf_ID INTEGER,
	Geburtsdatum DATE,
	Aktiv BIT NOT NULL,
CONSTRAINT PK_Personal PRIMARY KEY(Personal_ID) );

CREATE TABLE Tier
	(Tier_ID INTEGER identity(1,1) NOT NULL,
	Name nvarchar(50),
	Geschlecht nvarchar(50),
	Rasse_ID INTEGER NOT NULL,
	Geburtsdatum int NOT NULL,
	Besitzer_ID INTEGER NOT NULL,
CONSTRAINT PK_Tier PRIMARY KEY(Tier_ID));

CREATE TABLE Tierart
	(Tierart_ID INTEGER identity(1,1) NOT NULL,
	Tierart nvarchar(50),
CONSTRAINT PK_Tierart PRIMARY KEY(Tierart_ID));

CREATE TABLE Rasse
	(Rasse_ID INTEGER identity(1,1) NOT NULL,
	Tierart_ID INTEGER NOT NULL,
	Rasse nvarchar(50),
CONSTRAINT PK_Rasse PRIMARY KEY(Rasse_ID));

CREATE TABLE Besitzer
	(Besitzer_ID INTEGER identity(1,1) NOT NULL,
	Name nvarchar(50),
	Vorname nvarchar(50),
	Telefon nvarchar(20),
	Email nvarchar(50),
	Strasse nvarchar(50),
	PLZ INTEGER NOT NULL,
	Ort nvarchar(50),
CONSTRAINT PK_Besitzer PRIMARY KEY(Besitzer_ID));

CREATE TABLE Medikament
	(Medikament_ID INTEGER identity(1,1) NOT NULL,
	Name nvarchar(50),
	MedikamentGruppe_ID INTEGER NOT NULL,
	Hersteller nvarchar(50),
	Preis DECIMAL,
	Anzahl INTEGER NOT NULL,
CONSTRAINT PK_Medikamente PRIMARY KEY(Medikament_ID));

CREATE TABLE MedikamentGruppe
	(MedikamentGruppe_ID INTEGER identity(1,1) NOT NULL,
	GruppeName nvarchar(50),
CONSTRAINT PK_MedikamentGruppe PRIMARY KEY(MedikamentGruppe_ID));

CREATE TABLE Behandlung
	(Behandlung_ID INTEGER identity(1,1) NOT NULL,
	Personal_ID INTEGER NOT NULL,
	Termin_ID INTEGER NOT NULL,
	Medikament_ID INTEGER NOT NULL,
	Dauer TIME,
	AbschlussBemerkung nvarchar(1000),
	Gewicht float,
CONSTRAINT PK_Behandlung PRIMARY KEY(Behandlung_ID));

CREATE TABLE Termin
	(Termin_ID INTEGER identity(1,1) NOT NULL,
	Tier_ID INTEGER NOT NULL,
	Datum DATE,
	Medikament_ID INTEGER  NOT NULL,
	Bemerkung nvarchar(50),
CONSTRAINT PK_Termin PRIMARY KEY(Termin_ID));

CREATE TABLE Beruf
	(Beruf_ID INTEGER identity(1,1) NOT NULL,
	Name nvarchar(50),
CONSTRAINT PK_Beruf PRIMARY KEY(Beruf_ID));

GO
-- Referentielle Integrität:

ALTER TABLE Personal
	ADD CONSTRAINT FK_PersonalBeruf FOREIGN KEY(Beruf_ID)
	REFERENCES Beruf(Beruf_ID);

ALTER TABLE Tier
	ADD CONSTRAINT FK_TierRasse FOREIGN KEY(Rasse_ID)
	REFERENCES Rasse(Rasse_ID);

ALTER TABLE Tier
	ADD CONSTRAINT FK_TierBesitzer FOREIGN KEY(Besitzer_ID)
	REFERENCES Besitzer(Besitzer_ID) ON DELETE CASCADE;

ALTER TABLE Rasse
	ADD CONSTRAINT FK_RasseTierart FOREIGN KEY(Tierart_ID)
	REFERENCES Tierart(Tierart_ID);

ALTER TABLE Medikament
	ADD CONSTRAINT FK_MedikamentMedikamentGruppe FOREIGN KEY(MedikamentGruppe_ID)
	REFERENCES MedikamentGruppe(MedikamentGruppe_ID);

ALTER TABLE Behandlung
	ADD CONSTRAINT FK_BehandlungPersonal FOREIGN KEY(Personal_ID)
	REFERENCES Personal(Personal_ID);

ALTER TABLE Behandlung
	ADD CONSTRAINT FK_BehandlungTermin FOREIGN KEY(Termin_ID)
	REFERENCES Termin(Termin_ID) ON DELETE CASCADE;

ALTER TABLE Behandlung
	ADD CONSTRAINT FK_BehandlungMedikament FOREIGN KEY(Medikament_ID)
	REFERENCES Medikament(MEdikament_ID);

ALTER TABLE Termin
	ADD CONSTRAINT FK_TerminTier FOREIGN KEY(Tier_ID)
	REFERENCES Tier(Tier_ID) ON DELETE CASCADE;

ALTER TABLE Termin
	ADD CONSTRAINT FK_TerminMedikament FOREIGN KEY(Medikament_ID)
	REFERENCES Medikament(Medikament_ID);
