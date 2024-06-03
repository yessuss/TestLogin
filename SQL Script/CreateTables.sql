CREATE DATABASE Test
GO
USE Test
GO

CREATE TABLE Users (
	UserID INT Identity (1,1),
	UserName Varchar(100),
	Password Varchar(50)
)


CREATE TABLE Conversion(
	Id INT identity(1,1),
	Numero Varchar(100),
	NumeroEnLetra VARCHAR(200)
)
