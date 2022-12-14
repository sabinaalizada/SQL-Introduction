CREATE DATABASE BDUAcademy

USE BDUAcademy

CREATE TABLE Teachers
(
Id INT IDENTITY PRIMARY KEY ,
Name NVARCHAR(20) NOT NULL,
Surname NVARCHAR(25) NOT NULL,
Age INT NOT NULL,
Experience INT NOT NULL
)

ALTER TABLE Teachers
DROP COLUMN Surname

ALTER TABLE Teachers
ADD Surname NVARCHAR(15)

ALTER TABLE Teachers
ALTER COLUMN Surname NVARCHAR(17) NOT NULL

INSERT INTO Teachers(Name,Surname,Age,Experience)
VALUES
('Yusif','Quluzada',25,5),
('Khanim','Gurbanli',25,4),
('Sara','Mahmudova',24,4)

SELECT * FROM Teachers

UPDATE Teachers
SET Name='Khanim'
WHERE Id=3

DELETE FROM Teachers
WHERE Id=3


CREATE TABLE Students
(
Id INT IDENTITY PRIMARY KEY ,
Name NVARCHAR(15) NOT NULL,
Surname NVARCHAR(16) NOT NULL,
Age INT NOT NULL,
)

ALTER TABLE Students
DROP COLUMN Surname

ALTER TABLE Students
ADD Surname NVARCHAR(20)

ALTER TABLE Students
ALTER COLUMN Surname NVARCHAR(17) NOT NULL

INSERT INTO Students(Name,Surname,Age)
VALUES
('Sabina','Alizada',20),
('Ceyran','Murselova',19),
('Maryam','Xanmedova',19)

SELECT * FROM Students

UPDATE Students
SET Name='Gunel'
WHERE Id=3

DELETE FROM Students
WHERE Id=3

TRUNCATE TABLE Teachers
SELECT * FROM Teachers

TRUNCATE TABLE Students

SELECT * FROM Students

DROP TABLE Teachers

DROP TABLE Students

