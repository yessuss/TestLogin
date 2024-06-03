USE Test
GO
CREATE OR ALTER PROCEDURE ValidateUser
@User VARCHAR(50),
@Password Varchar(50)
AS
BEGIN

	SELECT UserName FROM Test.dbo.Users WHERE UserName =@User AND Password = @Password;
END