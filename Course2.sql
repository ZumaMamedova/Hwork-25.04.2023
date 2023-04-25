CREATE DATABASE Course2
USE Course2

CREATE TABLE Teachers(
Id INT IDENTITY PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
Surname VARCHAR(50) DEFAULT('EMERALD'),
Email NVARCHAR(50) UNIQUE,
Age INT CHECK(Age>18),
Salary DECIMAL
)

INSERT INTO Teachers VALUES('Vusala', 'Maliyeva','vus@gmail.com',30,1200)
INSERT INTO Teachers VALUES('Arifa', 'Latifova','ari@gmail.com',27,800)
INSERT INTO Teachers VALUES('Fatima', 'Huseynova','fat@gmail.com',25,700)
INSERT INTO Teachers VALUES('Xayal', 'Hasanov','xay@gmail.com',32,1500)
INSERT INTO Teachers VALUES('Arzu', 'Agayeva','arz@gmail.com',35,1100)
INSERT INTO Teachers VALUES('Zakariyya', 'Vakilov','zak@gmail.com',27,200)
INSERT INTO Teachers VALUES('Nihad', 'Nurullazade','nih@gmail.com',40,5000)
INSERT INTO Teachers VALUES('Murad', 'Babayev','mur@gmail.com',37,1700)
INSERT INTO Teachers VALUES('Sabina', 'Zeynalova','sab@gmail.com',29,2000)
INSERT INTO Teachers VALUES('Sona', 'Nabiyeva','son@gmail.com',23,3000)
INSERT INTO Teachers VALUES('Fatali', 'Aliyeva','fatali@gmail.com',31,2750)
INSERT INTO Teachers VALUES('Aysel', 'Rzayeva','ays@gmail.com',30,2445)
INSERT INTO Teachers VALUES('Sara', 'Masimova','sa@mail.ru',19,500)
INSERT INTO Teachers VALUES('Fidan', 'Xanaliyeva','fi@mail.ru',22,1800)
INSERT INTO Teachers VALUES('Rafiqa', 'Alakbarova','ra@mail.ru',42,3500)
INSERT INTO Teachers VALUES('Calal', 'Eldarov','ce@yandex.ru',39,2700)

SELECT AVG(Age) FROM Teachers
 --1
SELECT * FROM Teachers
WHERE Age > (SELECT AVG(Age) FROM Teachers)

--2
SELECT * FROM Teachers
WHERE Salary BETWEEN 1000 AND 3000

--3
SELECT [Name],Surname FROM Teachers
WHERE Email LIKE '%mail.ru'

--4
SELECT * FROM Teachers WHERE [Name] LIKE 'C%'