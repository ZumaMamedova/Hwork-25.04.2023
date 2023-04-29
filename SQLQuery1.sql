CREATE DATABASE TurboAz
DROP DATABASE TurboAz

CREATE DATABASE TurboAzFinal

USE TurboAz
USE TurboAzFinal

--create tables
CREATE TABLE Elan(
Id INT IDENTITY PRIMARY KEY,
ModelId INT REFERENCES Models(Id) NOT NULL,
RangId INT REFERENCES Rang(Id) NOT NULL,
BanId INT REFERENCES BanNovu(Id) NOT NULL,
Il INT NOT NULL,
VinKod NVARCHAR(17) NOT NULL UNIQUE,
ValutaId INT REFERENCES Valuta(Id) NOT NULL,
Qiymet DECIMAL(10,2),
YerlerinSayiId INT REFERENCES YerlerinSayi(Id),
BazarId INT REFERENCES Bazar(Id) NOT NULL,
MuherrikinGucu DECIMAL(20) NOT NULL,
MuherrikinHecmi DECIMAL(20) NOT NULL,
YanacaqNovuId INT REFERENCES YanacaqNovu(Id) NOT NULL,
OturucuId INT REFERENCES Oturucu(Id) NOT NULL,
SuratQutusuId INT REFERENCES Surat(Id) NOT NULL,
YuruyusKm DECIMAL(20) NOT NULL,
YuruyusMl DECIMAL(20) NOT NULL
);

CREATE TABLE Marka(
Id INT IDENTITY PRIMARY KEY,
MarkaName VARCHAR(255),
);

CREATE TABLE Valuta(
Id INT IDENTITY PRIMARY KEY,
ValutaName VARCHAR(50),
);

CREATE TABLE Models(
Id INT IDENTITY PRIMARY KEY,
ModelName NVARCHAR(50),
MarkaId INT REFERENCES Marka(Id)
);


CREATE TABLE BanNovu(
Id INT IDENTITY PRIMARY KEY,
BanName VARCHAR(255)
)

CREATE TABLE Rang(
Id INT IDENTITY PRIMARY KEY,
RangName VARCHAR(255)
)

CREATE TABLE YanacaqNovu(
Id INT IDENTITY PRIMARY KEY,
YanacaqName VARCHAR(255)
)

CREATE TABLE Bazar(
Id INT IDENTITY PRIMARY KEY,
BazarName VARCHAR(50)
)

CREATE TABLE Oturucu(
Id INT IDENTITY PRIMARY KEY,
OturucuName VARCHAR(50)
)
 CREATE TABLE Surat(
 Id INT IDENTITY PRIMARY KEY,
 SuratName VARCHAR(50)
 )

CREATE TABLE Contacts(
Id INT IDENTITY PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE,
Phone NVARCHAR(50) NOT NULL,
CityId INT REFERENCES Cities(Id) NOT NULL,
ElanId INT REFERENCES Elan(Id) NOT NULL
);

CREATE TABLE Cities(
Id INT IDENTITY PRIMARY KEY,
CityName VARCHAR(50) UNIQUE,
);


CREATE TABLE AutoVeziyeti(
AutoId INT PRIMARY KEY,
VuruguVar BIT DEFAULT(0),
Renglenib BIT DEFAULT(0),
QezaliEhtiyHisselerUcun BIT DEFAULT(0),
Kreditdedir BIT DEFAULT(0),
Barter BIT DEFAULT(0),
ElanId INT NOT NULL REFERENCES Elan(Id)
);

CREATE TABLE AutoTechizat(
Id INT PRIMARY KEY,
YungulLehimliDiskler BIT DEFAULT(0),
MerkeziQapanma BIT DEFAULT(0),
DeriSalon BIT DEFAULT(0),
OturacaqlarinVentilasiyasi BIT DEFAULT(0),
[ABS] BIT DEFAULT(0),
ParkRadari BIT DEFAULT(0),
KsenonLampalari BIT DEFAULT(0),
Lyuk BIT DEFAULT(0),
Kondisioner BIT DEFAULT(0),
ArxaGoruntuKamera BIT DEFAULT(0),
YagisSensoru BIT DEFAULT(0),
OturacaqlarinIsidilmesi BIT DEFAULT(0),
YanPerdeler BIT DEFAULT(0),
ElanId INT NOT NULL REFERENCES Elan(Id)
);

CREATE TABLE YerlerinSayi(
Id INT IDENTITY PRIMARY KEY,
Sayi NVARCHAR(50) 
);

INSERT INTO Marka VALUES('Audi'),('Chevrolet'),('Mercedes'),('BMW'),('Porche'),('Changan'),('Chery'),('Opel'),('Nissan'),('Toyota'),('Ford'),('Jeep'),('Kia'),('Volvo'),('Hyundai'),('Lexus')

INSERT INTO Models VALUES('A3',1),('A5',1),('A7',1),('A8',1),('Q7',1),('Q8',1),('S7',1)
INSERT INTO Models VALUES('Alero',2),('Astra',2),('Camaro',2),('Cruze',2),('Niva',2),('Venture',2),('Malibu',2)
INSERT INTO Models VALUES('C250',3),('A190',3),('CLA35 AMG',3),('CLK270',3),('B180',3),('C63 S',3),('E230',3)
INSERT INTO Models VALUES('725',4),('740',4),('850',4),('X5 M',4),('M5',4),('Z8',4),('IX3',4)
INSERT INTO Models VALUES('911Carrera',5),('911TurboS',5),('718Cayman',5),('Cayenne',5),('Macan GTS',5),('Panamera 4S',5),('Taycan Turbo',5)
INSERT INTO Models VALUES('Alsvin V3',6),('Benni',6),('CS 15',6),('CX 20',6),('Honor',6),('Q20',6),('Raeton',6)
INSERT INTO Models VALUES('Arizzo7',7),('Fora',7),('Kimo A1',7),('Sweet QQ',7),('Tiggo7',7),('Fulwin2',7),('Eastar B11',7)
INSERT INTO Models VALUES('Astra',8),('Corsa',8),('Frontera',8),('Mokka',8),('Sintra',8),('Vectra',8),('Tigra',8)
INSERT INTO Models VALUES('Sunny',9),('Juke',9),('Altima',9),('Navara',9),('Maxima',9),('Armada',9),('Kikcs',9)
INSERT INTO Models VALUES('Avalon',10),('Corolla',10),('Camry',10),('Prado',10),('Sienna',10),('Supra',10),('Yaris',10)
INSERT INTO Models VALUES('Focus',11),('Granada',11),('Mondeo',11),('Mustang',11),('Scorpio',11),('transit',11),('Siera',11)
INSERT INTO Models VALUES('Avenger',12),('Cherokee',12),('Patriot',12),('Wrangler',12),('Gladiator',12),('Compass',12),('Liberty',12)
INSERT INTO Models VALUES('Ceed',13),('Cerato',13),('Sportage',13),('Sorento',13),('Optima',13),('Picanto',13),('Rio',13)
INSERT INTO Models VALUES('960',14),('S60',14),('Ex90',14),('FH220',14),('V70',14),('XC90',14),('FM380',14)
INSERT INTO Models VALUES('Accent',15),('Elantra',15),('Sonata',15),('Grandeur',15),('SantaFe',15),('Tucson',15),('Veracruz',15)
INSERT INTO Models VALUES('ES200',16),('CS460',16),('GX470',16),('LS500',16),('RC350',16),('LX570',16)

INSERT INTO Rang VALUES('Ag'),('Qara'),('Boz'),('Bej'),('Qirmizi'),('Cehrayi'),('Yasil'),('Sari'),('Mavi'),('Goy'),('Benovsheyi'),('Qehveyi'),('Tund qirmizi'),('Yas asfalt')

INSERT INTO YanacaqNovu VALUES('Benzin'),('Dizel'),('Hibrid'),('Qaz'),('Elektro')

INSERT INTO BanNovu VALUES('Sedan'),('Kupe'),('Pikap'),('kabriolet'),('Hetchbek'),('Furqon'),('Universal')

INSERT INTO Bazar VALUES('Amerika'),('Avropa'),('Dubay'),('Koreya'),('Yaponiya'),('Diger')

INSERT INTO Oturucu VALUES('Arxa'),('On'),('Tam')

INSERT INTO Surat VALUES('Mexaniki'),('Avtomat'),('Robotlasdirilmis'),('Variator')

INSERT INTO YerlerinSayi VALUES('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8+')

INSERT INTO Valuta VALUES('AZN'),('USD'),('EUR')

INSERT INTO Elan VALUES(1,1,1,2009,'W12345L789',1,18000,1,2,50,2200,1,1,1,110000,56000)

SELECT * FROM Elan
SELECT * FROM YerlerinSayi
SELECT * FROM Surat