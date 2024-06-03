USE Test
GO
CREATE OR ALTER PROCEDURE SaveUser
@User VARCHAR(50),
@Password Varchar(50)
AS
BEGIN
	IF(@User = '')
	BEGIN
		SELECT 'USUARIO VACIO'
		RETURN
	END
	IF(@Password = '')
	BEGIN
		SELECT 'PASSWORD VACIO'
		RETURN
	END

	INSERT INTO Users (UserName,Password)
	VALUES(@User,@Password)

END